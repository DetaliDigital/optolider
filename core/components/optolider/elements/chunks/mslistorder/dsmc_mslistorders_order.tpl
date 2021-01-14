<div class="mslistorders-order">
    {if !count($orders)}
        <div class="alert">
        {'mslistorders_orders_empty' | lexicon}
        </div>
    {else}
        {foreach $orders as $order}
            <div class="cart-wrapper my-5">
                <div class="cart-header d-none d-lg-block">
                    <div class="row">
                        <div class="col-1 text-center"></div>
                        <div class="col-5 text-left">{'mslistorders_pagetitle' | lexicon}</div>
                        <div class="col-2 text-center">{'mslistorders_count' | lexicon}</div>
                        <div class="col-1 text-center">{'mslistorders_weight' | lexicon}</div>
                        <div class="col-1 text-center">{'mslistorders_price' | lexicon}</div>
                        <div class="col-2 text-center">{'mslistorders_total' | lexicon}</div>
                    </div>
                </div>
                <div class="cart-body">
                    {foreach $order.products as $product}

                        <!-- Product-->
                        <div class="cart-item">
                            <div class="row d-flex align-items-center text-center">
                                <div class="col-3 col-lg-1">
                                    <div class="image">
                                        <a href="{$url}">
                                            <img class="img-fluid text-center" src="{$product.data_image | phpthumbon : "w=183&h=248&q=70&bg=FFFFFF"}" alt="{$product.name}">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-9 col-lg-5 text-left font-weight-bold">{$product.name}</div>
                                <div class="col-6 d-block d-lg-none text-left">
                                    {'mslistorders_count' | lexicon}
                                </div>
                                <div class="col-6 col-lg-2 text-right text-lg-center">{$product.count} {'ms2_frontend_count_unit' | lexicon}</div>
                                <div class="col-6 d-block d-lg-none text-left">
                                    {'mslistorders_weight' | lexicon}
                                </div>
                                <div class="col-6 col-lg-1 text-right text-lg-center">{$product.weight} {'ms2_frontend_weight_unit' | lexicon}</div>
                                <div class="col-6 d-block d-lg-none text-left">
                                    {'mslistorders_price' | lexicon}
                                </div>
                                <div class="col-6 col-lg-1 text-right text-lg-center font-weight-bold">{$product.price} {'ms2_frontend_currency' | lexicon}</div>
                                <div class="col-6 d-block d-lg-none text-left">
                                    {'mslistorders_total' | lexicon}
                                </div>
                                <div class="col-6 col-lg-2 text-right text-lg-center font-weight-bold">{$product.cost} {'ms2_frontend_currency' | lexicon}</div>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-header">
                            <span class="font-weight-bold">{'mslistorders_delivery' | lexicon}</span>
                        </div>
                        <div class="card-body">
                            <dl class="dl-horizontal row justify-content-between">
                                <dt class="col-4 py-3 border-bottom font-weight-normal">Тип доставки:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">
                                    {$order.delivery_name}
                                </dd>
                                <dt class="col-4 py-3 border-bottom font-weight-normal">Город:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">
                                    {$order.address_city}
                                </dd>
                                <dt class="col-4 py-3 border-bottom font-weight-normal">Адрес:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">
                                {var $address = []}
                                {foreach ['street', 'building', 'room'] as $field}
                                    {var $field = 'address_' ~ $field}
                                    {if $order[$field]?}
                                        {var $address[] = $order[$field]}
                                    {/if}
                                {/foreach}
                                {$address | join: ', '}
                                </dd>
                            </dl>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-header">
                            <span class="font-weight-bold">{'mslistorders_cost' | lexicon}</span>
                        </div>
                        <div class="card-body">
                            <dl class="dl-horizontal row justify-content-between">
                                <dt class="col-4 py-3 border-bottom font-weight-normal">{'mslistorders_order_cost' | lexicon}:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$order.cart_cost} {'ms2_frontend_currency' | lexicon}</dd>
                                {if $order.delivery_cost != 0}
                                <dt class="col-4 py-3 border-bottom font-weight-normal">{'mslistorders_delivery_cost' | lexicon}:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$order.delivery_cost} {'ms2_frontend_currency' | lexicon}</dd>
                                {/if}
                                <dt class="col-4 py-3 border-bottom font-weight-normal">{'mslistorders_cost' | lexicon}:</dt>
                                <dd class="col-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$order.cost} {'ms2_frontend_currency' | lexicon}</dd>
                            </dl>
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}
    {/if}
</div>

