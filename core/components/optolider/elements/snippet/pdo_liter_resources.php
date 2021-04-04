<?php

/**
 * @var $modx
 * @var $tpl
 */

$pdo = $modx->getService('pdoFetch');
$output = '';

$conditions = [
    'parent' => 14130
];
$options = [
    'sortby' => 'pagetitle',
    'showUnpublished' => 1
];

function splitByFirstLetter(array $arr, $key="pagetitle") {

    $splitted = [];

    foreach ($arr as $element) {
        $firstLetter = mb_substr($element[$key], 0, 1);
        $splitted[data][$firstLetter][] = $element;
    }

    return $splitted;
}


$rows = splitByFirstLetter($pdo->getCollection('modResource', $conditions, $options));
$output = $pdo->getChunk($tpl, $rows);

return $output;