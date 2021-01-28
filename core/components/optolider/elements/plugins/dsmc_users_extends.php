<?php

$services = ['Розничные покупки', 'Оптовые покупки', 'Организатор СП', 'Партнер по дропшиппингу'];

switch ($modx->event->name) {
    case "OnMODXInit":
        $map = array(
            'modUserProfile' => array(
                'fields' => array(
                    'services' => NULL,
                    'interests' => NULL,
                ),
                'fieldMeta' => array(
                    'services' => array(
                        'dbtype' => 'text',
                        'precision' => '1000',
                        'phptype' => 'json',
                        'null' => true,
                    ),
                    'interests' => array(
                        'dbtype' => 'text',
                        'precision' => '1000',
                        'phptype' => 'json',
                        'null' => true,
                    ),
                ),
            ),
        );

        foreach ($map as $class => $data) {
            $modx->loadClass($class);

            foreach ($data as $tmp => $fields) {
                if ($tmp == 'fields') {
                    foreach ($fields as $field => $value) {
                        foreach (array('fields', 'fieldMeta', 'indexes') as $key) {
                            if (isset($data[$key][$field])) {
                                $modx->map[$class][$key][$field] = $data[$key][$field];
                            }
                        }
                    }
                } elseif ($tmp == 'composites' || $tmp == 'aggregates') {
                    foreach ($fields as $alias => $relation) {
                        if (!isset($modx->map[$class][$tmp][$alias])) {
                            $modx->map[$class][$tmp][$alias] = $relation;
                        }
                    }
                }
            }
        }
        break;

    case 'OnBeforeUserFormSave':

        if ($mode == 'new') {
            if (empty($_POST['services']) || !array_key_exists($_POST['services'], $services)) {
                $user->Profile->set('services', $_POST['services']);
            }
        }
        break;
}