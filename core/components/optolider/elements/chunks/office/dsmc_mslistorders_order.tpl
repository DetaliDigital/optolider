<div class="mslistorders-order">
    {if !count($orders)}
        {'mslistorders_orders_empty' | lexicon}
    {else}
        {foreach $orders as $order}
            <div class="table-responsive small">
                <table class="table">
                    <tr class="header">
                        <th class="image">&nbsp;</th>
                        <th class="pagetitle">{'mslistorders_pagetitle' | lexicon}</th>
                        <th class="count">{'mslistorders_count' | lexicon}</th>
                        <th class="weight">{'mslistorders_weight' | lexicon}</th>
                        <th class="price">{'mslistorders_price' | lexicon}</th>
                        <th class="cost">{'mslistorders_total' | lexicon}</th>
                    </tr>
                    {foreach $order.products as $product}
                        {var $url = $_modx->makeUrl($product.product_id)}
                        <tr id="{$product.id}">
                            <td class="image">
                                <a href="{$url}">
                                    {if $product.data_thumb?}
                                        <img src="{$product.data_thumb}" alt="{$product.name}" title="{$product.name}"/>
                                    {else}
                                        <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                                             srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                                             alt="{$product.name}" title="{$product.name}"/>
                                    {/if}
                                </a>
                            </td>
                            <td class="pagetitle"><a href="{$url}">{$product.name} {$product.data_article}</a>
                                {if $product.options?}
                                    <ul class="mslistorders-product-options">
                                        {foreach $product.options as $key => $option}
                                            <li>
                                                {('ms2_product_' ~ $key) | lexicon}:{$option}
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/if}
                            </td>
                            <td class="count"><span>{$product.count}</span> {'ms2_frontend_count_unit' | lexicon}</td>
                            <td class="weight"><span>{$product.weight}</span> {'ms2_frontend_weight_unit' | lexicon}
                            </td>
                            <td class="price"><span>{$product.price}</span> {'ms2_frontend_currency' | lexicon}</td>
                            <td class="cost"><span>{$product.cost}</span> {'ms2_frontend_currency' | lexicon}</td>
                        </tr>
                    {/foreach}

                    <tr class="footer">
                    </tr>
                </table>
            </div>
            <form class="form-horizontal small mslistorders-form">
                <div class="row">
                    <div class="span12 col-md-12">
                        <ul class="mslistorders-row-actions pull-right">
                            <li class="">
                                <button class="btn btn-default mslistorders-action" type="submit" value="close"
                                        title="{'mslistorders_action_close' | lexicon}">
                                </button>
                            </li>
                        </ul>
                    </div>

                    <div class="span6 col-md-6">
                        <h4>{'mslistorders_delivery' | lexicon}</h4>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_delivery' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">{$order.delivery_name}</p>
                            </div>
                        </div>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_address' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">
                                    {var $address = []}
                                    {foreach ['country','index','region', 'city', 'metro', 'street', 'building', 'room'] as $field}
                                        {var $field = 'address_' ~ $field}
                                        {if $order[$field]?}
                                            {var $address[] = $order[$field]}
                                        {/if}
                                    {/foreach}
                                    {$address | join: ', '}
                                </p>
                            </div>
                        </div>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_payment' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">{$order.payment_name}</p>
                            </div>
                        </div>
                    </div>
                    <div class="span6 col-md-6">
                        <h4>{'mslistorders_cost' | lexicon}</h4>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_order_cost' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">{$order.cart_cost} {'ms2_frontend_currency' | lexicon}</p>
                            </div>
                        </div>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_delivery_cost' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">{$order.delivery_cost} {'ms2_frontend_currency' | lexicon}</p>
                            </div>
                        </div>
                        <div class="form-group input-parent">
                            <label class="col-sm-4 control-label">{'mslistorders_cost' | lexicon}:</label>
                            <div class="col-sm-6">
                                <p class="form-control-static">{$order.cost} {'ms2_frontend_currency' | lexicon}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        {/foreach}
    {/if}
</div>

