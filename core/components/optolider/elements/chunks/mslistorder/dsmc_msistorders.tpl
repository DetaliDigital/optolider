<div id="mslistorders">
    {if !count($orders)}
        <div class="alert">
            {'mslistorders_orders_empty' | lexicon}
        </div>
    {else}
        <div class="cart-wrapper my-5">
            <div class="cart-header d-none d-lg-block">
                <div class="row">
                    <div class="col-2 text-center">{'mslistorders_num' | lexicon}</div>
                    <div class="col-2 text-center">{'mslistorders_createdon' | lexicon}</div>
                    <div class="col-2 text-center">{'mslistorders_customer' | lexicon}</div>
                    <div class="col-1 text-center">{'mslistorders_cost' | lexicon}</div>
                    <div class="col-1 text-center">{'mslistorders_status' | lexicon}</div>
                    <div class="col-1 text-center">Количество</div>
                    <div class="col-3 text-center">{'mslistorders_actions' | lexicon}</div>
                </div>
            </div>
            <div class="cart-body">
                {foreach $orders as $order}
                    <!-- Product-->
                    <div class="cart-item">
                        <div class="row d-flex align-items-center text-center">
                            <div class="col-6 d-block d-lg-none text-left">
                                {'mslistorders_num' | lexicon}
                            </div>
                            <div class="col-6 col-lg-2 text-right text-lg-center">
                                {$order.num}
                            </div>
                            <div class="col-6 d-block d-lg-none text-left">
                                {'mslistorders_createdon' | lexicon}
                            </div>
                            <div class="col-6 col-lg-2 text-right text-lg-center">
                                {$order.createdon | date :"d.m.Y"}
                            </div>
                            <div class="col-6 d-block d-lg-none text-left">
                                {'mslistorders_customer' | lexicon}
                            </div>
                            <div class="col-6 col-lg-2 text-right text-lg-center">
                                {$order.profile_fullname}
                            </div>
                            <div class="col-6 d-block d-lg-none text-left">
                                {'mslistorders_cost' | lexicon}
                            </div>
                            <div class="col-6 col-lg-1 text-right text-lg-center">
                                {$order.cost} {'ms2_frontend_currency' | lexicon}
                            </div>
                            <div class="col-6 d-block d-lg-none text-left">
                                {'mslistorders_status' | lexicon}
                            </div>
                            <div class="col-6 col-lg-1 text-right text-lg-center">
                                {$order.status_name}
                            </div>
                            <div class="col-6 d-block d-lg-none text-left">
                                Количество
                            </div>
                            <div class="col-6 col-lg-1 text-right text-lg-center">
                                {$order.total_product} {'ms2_frontend_count_unit' | lexicon}
                            </div>
                            <div class="col-lg-3 text-center d-flex justify-content-center mt-3 mt-lg-0">
                                <ul class="mslistorders-row-actions list-unstyled">
                                    {foreach $actions as $action}
                                        <li>
                                            <form method="post" class="mslistorders-form">
                                                <input type="hidden" name="id" value="{$order.id}">
                                                <input type="hidden" name="propkey" value="{$order.propkey}">
                                                <button class="btn btn-default mslistorders-action" type="submit"
                                                        value="{$action}"
                                                        {if $action == 'view'}
                                                        data-toggle="modal"
                                                        data-target="#listOrderProducts"
                                                        data-title="{$order.num}"
                                                        {/if}
                                                        title="{('mslistorders_action_' ~ $action) | lexicon}">
                                                </button>
                                            </form>
                                        </li>
                                    {/foreach}
                                </ul>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    {/if}
</div>
<br>

{if $total?}
    <div class="row">
        <div class="col-md-6">
            <div class="mslistorder-total card shadow-sm">
                <div class="card-header">
                    <strong>{'mslistorders_cost' | lexicon}:</strong><br>
                </div>
                <div class="card-body">
                    <dl class="dl-horizontal row justify-content-between">
                        <dt class="col-6 col-lg-4 py-3 border-bottom font-weight-normal">{'mslistorders_sum_orders' | lexicon}:</dt>
                        <dd class="col-6 col-lg-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$total.sum} {'ms2_frontend_currency' | lexicon}</dd>
                        <dt class="col-6 col-lg-4 py-3 border-bottom font-weight-normal">{'mslistorders_count_orders' | lexicon}:</dt>
                        <dd class="col-6 col-lg-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$total.orders} {'ms2_frontend_count_unit' | lexicon}</dd>
                        <dt class="col-6 col-lg-4 py-3 border-bottom font-weight-normal">{'mslistorders_count_products' | lexicon}:</dt>
                        <dd class="col-6 col-lg-8 text-right py-3 border-bottom mb-0 font-weight-bold">{$total.products} {'ms2_frontend_count_unit' | lexicon}</dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    </div>
{/if}

<!-- Modal -->
<div class="modal fade" id="listOrderProducts" tabindex="-1" aria-labelledby="listOrderProductsLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h2 class="modal-title my-3">
                    <span class="listOrderProductsTitle"></span>
                </h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="mslistorder-output">
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button type="button" class="btn btn-success btn-lg btn-block" data-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>


