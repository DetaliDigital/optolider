<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'pdoToolsOnFenomInit':
        /** @var Fenom $fenom
        Мы получаем переменную $fenom при его первой инициализации и можем вызывать его методы.
        Модификатор определяет id родителя.
         */
        $fenom->addModifier('up', function ($input) use ($modx) {
            if ($input) {
            $row = $modx->getObject('modResource', $input);
            $output = $row->get('parent');
            return $output;
            }
        });
        break;
}