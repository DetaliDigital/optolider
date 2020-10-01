<?php

if (!is_array($row)) {
    return '{}';
}


$mssp = $modx->runsnippet('dtlsSalePrice' , [
    'product' => $row['id']
]);

if ($row['min_count'] != 1 && $row['min_count'] != '') {
    unset ($mssp['1']);
}


$row['mssp'] = $mssp;


$item = array_merge(
    (array) $row,
    array(
        'tplPlaceholders' => $modx->getOption('tplPlaceholders', $scriptProperties, '')
    )
);

return json_encode($item);