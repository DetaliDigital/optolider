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

        $fenom->addModifier('dsmc_parent_name', function ($input) use($modx) {
            if ($input) {
                $id = implode(json_decode($modx->resource->getTVValue($input)));
                $data = $modx->getObject('modResource' , $id);

                $row = $data->get('longtitle') ?: $data->get('pagetitle');
                return $row;
            }
        });

        break;
}