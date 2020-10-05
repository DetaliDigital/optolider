<?php

if (!is_array($row)) {
    return '{}';
}


$item = array_merge((array)$row,
    array(
        'addPlaceholders' => $modx->getOption('addPlaceholders', $scriptProperties, '')
    )
);
return json_encode($item);