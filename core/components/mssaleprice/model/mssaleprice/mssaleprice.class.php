<?php

class msSalePrice
{
    public $version = '1.2.2-beta';

    /** @var modX $modx */
    public $modx;

    /** @var miniShop2 $miniShop2 */
    public $ms2;

    /** @var pdoFetch $pdoTools */
    public $pdoTools;

    /** @var array $initialized */
    public $initialized = array();

    /**
     * @param modX $modx
     * @param array $config
     */
    function __construct(modX &$modx, array $config = array())
    {
        $this->modx =& $modx;

        $corePath = $this->modx->getOption('mssaleprice_core_path', $config, $this->modx->getOption('core_path') . 'components/mssaleprice/');
        $assetsUrl = $this->modx->getOption('mssaleprice_assets_url', $config, $this->modx->getOption('assets_url') . 'components/mssaleprice/');
        $actionUrl = $this->modx->getOption('mssaleprice_action_url', $config, $assetsUrl . 'action.php');

		$msspgroups = array();
		if ($groups = $this->modx->getOption('mssaleprice_user_groups', null, false, true)){
			$groups = array_map('trim', explode(',', $groups));
            $c = $this->modx->newQuery('modUserGroup')
                ->where(array(
                    'name:IN' => $groups
                ))
                ->select('id,name');

            if ($c->prepare() && $c->stmt->execute()) {
                while ($row = $c->stmt->fetch(PDO::FETCH_ASSOC)){
                    $msspgroups[$row['id']] = $row['name'];
                }
            }
            /*
			foreach($groups as $group){
				if( $usergroup = $this->modx->getObject('modUserGroup', array('name' => $group)) ){
					$msspgroups[$usergroup->id] = $usergroup->name;
				}
			}*/
		}

        $connectorUrl = $assetsUrl . 'connector.php';

        $this->config = array_merge(array(
            'assetsUrl' => $assetsUrl,
            'cssUrl' => $assetsUrl . 'css/',
            'jsUrl' => $assetsUrl . 'js/',
            'connectorUrl' => $connectorUrl,
            'actionUrl' => $actionUrl,

            'corePath' => $corePath,
            'modelPath' => $corePath . 'model/',
            'chunksPath' => $corePath . 'elements/chunks/',
            'templatesPath' => $corePath . 'elements/templates/',
            'chunkSuffix' => '.chunk.tpl',
            'snippetsPath' => $corePath . 'elements/snippets/',
            'processorsPath' => $corePath . 'processors/',

            'ctx' => 'web',
            'json_response' => false,
            'prepareResponse' => true,
			'groups'	=>	array_reverse($msspgroups, true),
        ), $config);

        $this->modx->addPackage('mssaleprice', $this->config['modelPath']);
        $this->modx->lexicon->load('mssaleprice:default');

        $this->ms2 = $modx->getService('miniShop2');
        $this->pdoTools = $this->ms2->pdoTools;
        if (!($this->ms2 instanceof miniShop2)) {
            return false;
        }
    }

    /**
     * Initializes component into different contexts.
     *
     * @param string $ctx The context to load. Defaults to web.
     * @param array $scriptProperties Properties for initialization.
     *
     * @return bool
     */
    public function initialize($ctx = 'web', $scriptProperties = array())
    {
        if (isset($this->initialized[$ctx])) {
            return $this->initialized[$ctx];
        }
        $this->config = array_merge($this->config, $scriptProperties);
        $this->config['ctx'] = $ctx;

        $this->ms2->initialize($ctx, array('json_response' => $this->config['json_response']));

        //if ($ctx != 'mgr' && (!defined('MODX_API_MODE') || !MODX_API_MODE)) {
        if ($ctx != 'mgr') {

        }
        $this->initialized[$ctx] = true;

        return true;
    }

	/**
     * This method loads the css and js
     *
     * @return integer
     */
    public function loadJsCss(array $properties = array())
    {
		$data = json_encode(array_merge(array(
			'cssUrl' => $this->config['cssUrl'] . 'web/',
			'jsUrl' => $this->config['jsUrl'] . 'web/',
			'actionUrl' => $this->config['actionUrl'],
			'ctx' => $this->config['ctx'],
		),$properties), true);
		$this->modx->regClientScript(
			'<script type="text/javascript">msSalePriceConfig = ' . $data . ';</script>', true
		);

        // Register CSS
		$css = trim($this->modx->getOption('mssaleprice_frontend_css'));
		if (!empty($css) && preg_match('/\.css/i', $css)) {
			if (preg_match('/\.css$/i', $css)) {
				$css .= '?v=' . substr(md5($this->version), 0, 10);
			}
			$this->modx->regClientCSS($this->config['cssUrl']. 'web/'.$css);
		}

		// Register JS
		$js = trim($this->modx->getOption('mssaleprice_frontend_js'));
		if (!empty($js) && preg_match('/\.js/i', $js)) {
			if (preg_match('/\.js$/i', $js)) {
				$js .= '?v=' . substr(md5($this->version), 0, 10);
			}
			$this->modx->regClientScript($this->config['jsUrl']. 'web/'.$js);
		}

    }

	/**
     * This method return on user group id
     *
     * @return integer
     */
	public function getUserGroup()
	{
		if( $user = $this->modx->getUser() ){
			foreach( $this->config['groups'] as $key => $group ){
				if( $user->isMember($group) ){
					return $key;
				}
			}
		}
		return 0;
	}

	/**
     * This method return on product price by type
     *
     * @param integer $type
     * @param float $value
     * @param float $price
     *
     * @return float $response
     */
    public function getPriceByType($type = 0, $value = 0, $price = 0)
	{
        switch ($type) {
            case 1:
                break;
            case 2:
                $value = $price + $value;
                break;
            case 3:
                $value = $price - $value;
                break;
            case 4:
                $value = $price * $value;
                break;
            case 5:
                $value = $price / $value;
                break;
            case 6:
				if (empty($value)) {
					$value = 1;
				}
				$value = $price / 100 * $value;
                break;
            default:
                break;
        }

        if ($value < 0) {
            $value = 0;
        }

        return $value;
    }

	/**
     * This method return on product price for mssp
     *
     * @param msProduct|integer $product
     * @param integer $count
     * @param array $data
     *
     * @return array|string $response
     */
	public function getPrice($product = 0, $count = 1, $data = array())
	{
        if (is_numeric($product)) {
            $product = $this->modx->getObject('msProduct', $product);
        }
		elseif ($product instanceof msProductData) {
			$product = $product->getOne('Product');
		}

		if (!$product OR !($product instanceof msProduct)) {
			return $this->error('mssaleprice_msproduct_nf');
		}

        $count = intval($count);
		if (empty($count))
            $count = 1;
		if (!is_array($data))
            $data = array();

        //$this->modx->log(xPDO::LOG_LEVEL_ERROR,'getPrice data: '.print_r($data, 1));

		$data = array_merge($product->toArray(), $data, array('msoptionsprice_reload' => true));

        $response = $this->ms2->invokeEvent('msspOnBeforeGetPrice', array(
            'product'	=> $product,
            'rid'		=> $product->get('id'),
            'count'		=> $count,
			'data' 		=> $data,
        ));
        if (!$response['success'])
            return $this->error($response['message']);

		$count = $response['data']['count'];
		$data = $response['data']['data'];

        $default_price = $product->getPrice($data);

        $msop_modification = (array)$this->modx->getPlaceholder('_mssp_msop');
        $mid = $this->modx->getOption('id', $msop_modification, 0, true);

        $pids = $this->modx->getParentIds($product->get('id'), 10, array('context' => $product->get('context_key')));
        array_unshift($pids, $product->get('id'));

		$q = $this->modx->newQuery('msspPrice')
            ->where(array(
                //'rid:IN'    =>  $pids,
                //'mid'       =>  $mid,
                'count:<='  =>  $count,
                'usergroup' =>  $this->getUserGroup(),
            ))
            ->where(array(
                array(
                    'rid'       =>  $product->get('id'),
                    'AND:mid:=' =>  $mid,
                ),
                array(
                    'rid:IN'    =>  $pids,
                    'AND:mid:=' =>  0,
                ),
            ),xPDOQuery::SQL_OR)
            ->sortby('`count` DESC, `mid` DESC, FIELD (`rid`, '.implode(',', $pids).')', 'ASC')
            ->limit(1);

        //$q->prepare();
        //$this->modx->log(xPDO::LOG_LEVEL_ERROR,'getPrice: '.$q->toSQL());

		if( $mssp = $this->modx->getObject('msspPrice', $q) ){
			$mssp_price = $this->ms2->formatPrice($this->getPriceByType($mssp->get('type'), $mssp->get('price'), $default_price));
			$output = array(
				'rid'		=>	$product->get('id'),
				'price'		=>	$mssp_price,
				'old_price'	=>	$default_price,
			);

		    $data['price'] = $mssp_price;
            /*
    		$params = array(
    			'product' => $product->getOne('Data'),
    			'data' => $data,
    			'price' => $mssp_price,
    		);
            /*
            $_SESSION['discontrol']['stop'] = 1;
    		$response = $this->ms2->invokeEvent('msOnGetProductPrice', $params);
            $_SESSION['discontrol']['stop'] = 0;

    		if ($response['success']) {
    			$output['price'] = $response['data']['price'];
    		}*/
		}
		else{
			$output = array(
				'rid'		=>	$product->get('id'),
				'price'		=>	$default_price,
				'old_price'	=>	$product->get('old_price'),
			);
		}

        $response = $this->ms2->invokeEvent('msspOnAfterGetPrice', array(
            'product'	=> $product,
            'rid'		=> $product->get('id'),
            'count'		=> $count,
            'price'		=> $output['price'],
            'old_price'	=> $output['old_price'],
			'data' 		=> $data,
        ));
        if (!$response['success']) {
            return $this->error($response['message']);
        }
		$output['price'] = $response['data']['price'];
		$output['old_price'] = $response['data']['old_price'];
		$output['old_price'] = ($output['price'] >= $output['old_price']) ? 0 : $output['old_price'];
		if (isset($response['data']['options'])) {
		    $output['options'] = $response['data']['options'];
        }
        $this->modx->setPlaceholder('_mssp_msop', null);

		return $this->success('', $output);
	}

    /**
     * This method returns an error
     *
     * @param string $message A lexicon key for error message
     * @param array $data .Additional data
     * @param array $placeholders Array with placeholders for lexicon entry
     *
     * @return array|string $response
     */
    public function error($message = '', $data = array(), $placeholders = array())
    {
        $response = array(
            'success' => false,
            'message' => $this->modx->lexicon($message, $placeholders),
            'data' => $data,
        );

        return $this->config['json_response']
            ? json_encode($response)
            : $response;
    }

    /**
     * This method returns an success
     *
     * @param string $message A lexicon key for success message
     * @param array $data .Additional data
     * @param array $placeholders Array with placeholders for lexicon entry
     *
     * @return array|string $response
     */
    public function success($message = '', $data = array(), $placeholders = array())
    {
        $response = array(
            'success' => true,
            'message' => $this->modx->lexicon($message, $placeholders),
            'data' => $data,
        );

        return $this->config['json_response']
            ? json_encode($response)
            : $response;
    }
}
