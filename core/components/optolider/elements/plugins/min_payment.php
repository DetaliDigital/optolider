<?php
switch ($modx->event->name) {

    case 'msOnSubmitOrder':
        $orderData = $order->get();
        $status = $order->ms2->cart->status();
        $mincost = $modx->getOption('min_payment');

        if(!$mincost){
            $mincost = 750;
        }

        if($status['total_cost'] < $mincost)

        {
            $message = "Минимальная сумма оформления заказа: ".$mincost . " руб";
            $data = array('success' => false, 'message' => $message);
            return $modx->event->output($message);
        }
}