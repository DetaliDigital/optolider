<?php
$output = '';

if($logedResource and $modx->resource->id == $logedResource) $loged = true;
if(empty($elementClass)) $elementClass = 'modSnippet';

if (empty($cached_element)) {
    $modx->log(modX::LOG_LEVEL_ERROR, "getClass requires an element and elementClass property to be set");
    return $output;
}

$properties = $scriptProperties;
/* Unset these to prevent filters from being applied to the element being processed
 * See http://bugs.modx.com/issues/2609
 */

unset($properties['filter_commands']);
unset($properties['filter_modifiers']);

//if (empty($cacheKey)) $cacheKey = $modx->getOption('cache_resource_key', null, 'resource');
$cacheKey = 'filter';
if (empty($cacheHandler)) $cacheHandler = $modx->getOption('cache_resource_handler', null, $modx->getOption(xPDO::OPT_CACHE_HANDLER, null, 'xPDOFileCache'));
if (!isset($cacheExpires)) $cacheExpires = (integer) $modx->getOption('cache_resource_expires', null, $modx->getOption(xPDO::OPT_CACHE_EXPIRES, null, 0));

$request = $modx->request->getParameters();
if(isset($request['debug'])){
    unset($request['debug']);unset($request['cache']);unset($request['top']);unset($request['add']);
}

$properties2 = $properties; unset($properties2['loged']); unset($properties2['logedResource']);
if (empty($cacheElementKey)) $cacheElementKey = $modx->resource->getCacheKey() . '/' . md5($modx->toJSON($properties2) . $modx->toJSON($request));
unset($properties2);

$cacheOptions = array(
    xPDO::OPT_CACHE_KEY => $cacheKey,
    xPDO::OPT_CACHE_HANDLER => $cacheHandler,
    xPDO::OPT_CACHE_EXPIRES => $cacheExpires,
);

$cached = $modx->cacheManager->get($cacheElementKey, $cacheOptions);
if($noCache) $cached = false;

if (!isset($cached['properties'])) {
    if($preHooks){
        $Hooks = explode(";", $preHooks);
        foreach($Hooks as $h){
            $h = explode("?",$h);
            $sp = array();
            if(isset($h[1])){
                $json = json_decode($h[1],1);
                if(is_array($json)){
                    $sp = $json;
                }
            }
            if($loged) $modx->log(modX::LOG_LEVEL_ERROR, "getCacheSensitive preHooks {$h[0]} {$h[1]} ".print_r($sp,1));

            $out = $modx->runSnippet(trim($h[0]), $sp);
            if(isset($sp['hook_properties'])){
                $hook_propertys = explode(",",$sp['hook_properties']);
                foreach($hook_propertys as $hp){
                    $properties[$hp] = $out;
                }
            }
        }
    }
    if($loged) $modx->log(modX::LOG_LEVEL_ERROR, "getCacheSensitive properties ".print_r($properties,1));
    $elementObj = $modx->getObject($elementClass, array('name' => $cached_element));
    if ($elementObj) {
        //loadscript
        $sjscripts = $modx->sjscripts;
        $jscripts = $modx->jscripts;
        //get
        $get = $_GET;
        $post = $_POST;
        //$session = $_SESSION;
        $placeholders = $modx->placeholders;

        //убираем параметры getCacheSensitive.
        unset($properties['preHooks']);unset($properties['cashed_element']);unset($properties['cacheKey']);unset($properties['cacheExpires']);

        $elementObj->setCacheable(false);

        $output = $elementObj->process($properties);

        $sjscripts = array_diff($modx->sjscripts,$sjscripts);
        $jscripts = array_diff($modx->jscripts,$jscripts);
        $get = array_diff($_GET,$get);
        $post = array_diff($_POST,$get);
        //$session = array_diff($_SESSION,$session);
        $placeholders = array_diff($modx->placeholders,$placeholders);

        if ($modx->getCacheManager()) {
            $cached = array('properties' => $properties, 'output' => $output, 'sjscripts' => $sjscripts, 'jscripts' => $jscripts, 'get' => $get, 'post' => $post, 'session_mSearch2' => $_SESSION['mSearch2'], 'placeholders' => $placeholders);
            $modx->cacheManager->set($cacheElementKey, $cached, $cacheExpires, $cacheOptions);
            if($loged) $modx->log(modX::LOG_LEVEL_ERROR, "getCacheSensitive run {$element} of cacheElementKey {$cacheElementKey} on {$modx->resource->pagetitle} request ".print_r($request,1)." get ".print_r($get,1));
        }
    } else {
        $modx->log(modX::LOG_LEVEL_ERROR, "getCache could not find requested element {$element} of class {$elementClass}");
    }

} else {
    $properties = $cached['properties'];
    $output = $cached['output'];

    if(!empty($cached['sjscripts'])){
        foreach($cached['sjscripts'] as $sj){
            if (strpos(strtolower($sj), "<style") !== false || strpos(strtolower($sj), "<link") !== false) {
                $modx->regClientCSS($sj);
            }else{
                $modx->regClientStartupScript($sj);
            }

        }
    }

    if(!empty($cached['jscripts'])){
        foreach($cached['jscripts'] as $j){
            $modx->regClientScript($j);
        }
    }
    if(!empty($cached['get'])){
        $_GET = array_merge($_GET,$cached['get']);
    }
    if(!empty($cached['post'])){
        $_POST = array_merge($_POST,$cached['post']);
    }
    if(!empty($cached['session_mSearch2'])){
        $_SESSION['mSearch2'] = array_merge($_SESSION['mSearch2'],$cached['session_mSearch2']);
    }
    if(!empty($cached['placeholders'])){
        $modx->placeholders = array_merge($modx->placeholders,$cached['placeholders']);
    }

    if($loged) $modx->log(modX::LOG_LEVEL_ERROR, "getCacheSensitive load from cache {$element} of cacheElementKey {$cacheElementKey} on {$modx->resource->pagetitle} request ".print_r($request,1));
}

//$modx->setPlaceholders($properties, $properties['namespace']);

/*if (!empty($properties['toPlaceholder'])) {
    $modx->setPlaceholder($properties['toPlaceholder'], $output);
    $output = '';
}*/

return $output;