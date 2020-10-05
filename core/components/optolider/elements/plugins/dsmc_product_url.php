<?php
switch ($modx->event->name) {

    // Documents
    case 'OnBeforeDocFormSave':
        if ($resource->get('class_key') == 'msProduct') {

            $uri = $modx->getOption('ms2_product_as_uri');
            $pre_uri = preg_replace('/\/.+/', '' , $uri);
            preg_match_all('~{([^{}]*)}~' , $uri , $alias);
            $mimeType = $modx->getObject('modContentType' , array('mime_type' => 'text/html'));
            $suffix = $mimeType->get('file_extensions');

            $url = $pre_uri . '/' . $resource->get($alias[1][0]) . $suffix;

            $resource->set('uri' , $url);
            $resource->set('uri_override' , true);

            if($modx->getOption('ms2_product_as_uri_debug') == 1) {
                $modx->log(modX::LOG_LEVEL_ERROR, 'URI изменен на ' . $url);
            }

            $resource->save();
        }

        break;
}