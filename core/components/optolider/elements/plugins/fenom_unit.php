<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'pdoToolsOnFenomInit':
        /** @var Fenom $fenom
        Мы получаем переменную $fenom при его первой инициализации и можем вызывать его методы.
        Модификатор получает значение ТВ по его название.
         */
        $fenom->addModifier('tv', function ($input) use ($modx) {
            if ($input) {
                return $modx->resource->getTVValue($input);
            }
        });
        break;
}