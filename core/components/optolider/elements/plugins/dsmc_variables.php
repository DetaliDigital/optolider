<?php
switch ($modx->event->name) {
    case 'OnLoadWebDocument':
        $mspcs = $modx->getService('msproductscomposeselection', 'MsPCS');
        $resource = $modx->resource->get('id');
        $mspcsTmpData = $mspcs->getResourceSelection($resource);
        $mspsc = !empty($mspcsTmpData) ? 2: '';
        $modx->setPlaceholder('dsmc_mspcs_where', $mspsc);

        break;
}