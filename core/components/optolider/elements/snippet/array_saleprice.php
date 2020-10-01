<?php
if (!$mssp = $modx->getService('mssaleprice', 'msSalePrice', $modx->getOption('mssaleprice_core_path', null,
        $modx->getOption('core_path') . 'components/mssaleprice/') . 'model/mssaleprice/', $scriptProperties)
) {
    return 'Could not load msSalePrice class!';
}

$tpl = $scriptProperties['tpl'] = $modx->getOption('tpl', $scriptProperties, 'tpl.msSalePrice', true);
//$step = $scriptProperties['step'] = $modx->getOption('step', $scriptProperties, 1, true);
$product = $scriptProperties['product'] = $modx->getOption('product', $scriptProperties, $modx->resource->id, true);
$showDefaultPrice = $scriptProperties['showDefaultPrice'] = $modx->getOption('showDefaultPrice', $scriptProperties, true);

$mssp->initialize($modx->context->key, $scriptProperties);

/** @var msProduct $product */
$product = $modx->getObject('msProduct', $product);
if (!$product OR !($product instanceof msProduct)) {
    return "[msSalePrice] The resource with id = {$product->id} is not instance of msProduct.";
}

$options = $modx->getOption('options', $scriptProperties, array(), true);
if (!is_array($options)) {
    $options = json_decode($options, true);
}
if (!is_array($options)) {
    $options = array();
}

$default_price = $product->getPrice(array_merge(
    $product->toArray(),
    array(
        'msoptionsprice_reload' => true,
        'msoptionsprice_options' => $options,
        'options' => $options,
    )
));

$msop_modification = (array)$modx->getPlaceholder('_mssp_msop');
$mid = $modx->getOption('id', $msop_modification, 0, true);
$modx->setPlaceholder('_mssp_msop', null);

$counts = array();
$pids = $modx->getParentIds($product->get('id'), 10, array('context' => $product->get('context_key')));
array_unshift($pids, $product->get('id'));
$q = $modx->newQuery('msspPrice')
    ->where(array(
        'usergroup' =>  $mssp->getUserGroup(),
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
    ->groupby('count')
    ->select('count')
    ->sortby('count', 'ASC');
if ($q->prepare() && $q->stmt->execute()) {
    $counts = $q->stmt->fetchAll(PDO::FETCH_COLUMN);
}
if ($showDefaultPrice && !in_array(1, $counts)){
    array_unshift($counts, 1);
}

$rows = array(); $idx = 1;
foreach ($counts as $count){
    $data = $mssp->getPrice($product, $count, array(
        'msoptionsprice_reload' => true,
        'msoptionsprice_options' => $options,
        'options' => $options,
    ));
    if ($data['success']){
        $rows[$count] = array(
            'idx'       =>  $idx++,
            'count'     =>  $count,
            'price'     =>  $data['data']['price'],
            'old_price' =>  $data['data']['old_price'],
        );
    }
}

$modx->setPlaceholder('saleprice' , $rows);
return ($rows);