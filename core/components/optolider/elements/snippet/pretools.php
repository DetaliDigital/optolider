<?php

// Добавляем плейсхолдер для передачи данных в wrapper снипетов pdoTools

if (!$snippet) {
    $snippet = 'msProducts';
}

$modx->setPlaceholders($wrapperPlaceholders, 'dsmc_wrapper_');
return $modx->runSnippet($snippet, $scriptProperties);