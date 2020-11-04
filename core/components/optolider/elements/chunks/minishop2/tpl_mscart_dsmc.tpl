<div id="msCart">
    {if $total.cost | preg_replace:'/\s+/' : '' < $_modx->config.min_payment}
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Внимание!</strong> Минимальная cумму оформления заказа {$_modx->config.min_payment} руб.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    {/if}

    {if !count($products)}
    <div class="alert alert-warning">
        {'ms2_cart_is_empty' | lexicon}
    </div>
    {else}
    <div class="the_cart_list">
        <div class="the_cart_list_head row mx-0 clearfix d-none d-md-flex">
            <p class="col-md-1 mb-0"></p>
            <p class="col-md-4 mb-0 px-3">Наименование</p>
            <p class="col-md-2 mb-0 px-3">Количество</p>
            <p class="col-md-2 mb-0 px-3">Цена</p>
            <p class="col-md-2 mb-0 px-3">Сумма</p>
            <p class="col-md-1 mb-0"></p>
        </div>
        {$_modx->runSnippet('!msSalePrice.initialize')}
        <div class="the_cart_list_content variable-width">
            {foreach $products as $product}
                <div class="the_cart_list_item clearfix row py-4 border-bottom ml-3 mr-4 position-relative" id="{$product.key}">
                    <div class="img col-md-1 border-right text-center border-mobile mt-2 mt-md-0">
                        <img class="img-fluid text-center" src="{$product.image | phpthumbon : "w=183&h=248&q=70&bg=FFFFFF"}" alt="{$product.pagetitle}">
                    </div>
                    <div class="cart_list_title col-md-4 d-flex align-items-center px-0 px-md-4 pt-5 mb-2 mb-md-0 pt-md-0">
                        <a class="font-weight-bold text-dark" href="{$product.uri}">
                            {$product.pagetitle}
                        </a>
                    </div>
                    <div class="qty_wrap col-12 col-md-2 d-flex align-items-center text-center justify-content-center justify-content-md-start">

                        <form method="post" class="ms2_form" role="form">
                            <input type="hidden" name="key" value="{$product.key}"/>
                            <div class="form-group mb-0">
                                <input class="form-control form-spinner" name="count" value="{$product.count}" min="1" max="1000" step="1">
                                {if $product.min_count != 0}
                                <div class="min_count text-center col-12"><small>Заказ от <b>{$product.min_count} шт</b></small></div>
                                {else}
                                <div class="min_count text-center col-12"><small>Заказ от <b>1 шт</b></small></div>
                                {/if}
                                <button class="btn" type="submit" name="ms2_action" value="cart/change">↻</button>
                            </div>
                        </form>
                        <!--<div class="d-flex flex-wrap">Мин. заказ — 1 шт.</div>-->
                    </div>
                    <div class="cart_price_wrap col-md-2 d-flex align-items-center h5 mssaleprice-cost ml-0 pl-md-2 pl-0 pb-0 mb-0">
                        <span class="mr-1">{$product.price}</span> руб.
                    </div>
                    <div class="cart_sum_wrap col-md-2 align-items-center h5 d-none d-md-flex pb-0 mb-0">
                        <span class="mr-1">{$product.cost}</span> руб.
                    </div>

                    <div class="cart_delete_wrap col-md-1 d-flex align-items-center">
                        <form method="post" class="ms2_form text-md-right">
                            <input type="hidden" name="key" value="{$product.key}">
                            <button class="btn text-success border border-success rounded-circle btn-remove" type="submit" name="ms2_action" value="cart/remove"><i class="fas fa-times"></i></button>
                        </form>
                    </div>

                </div>
            {/foreach}
        </div>
        <div class="the_cart_list_total total_row row mt-3 px-2">
            <div class="col-lg-8 pl-4">
                {*
                {'!msPromoCode2' | snippet : [
                'tpl' => 'tpl.msPromoCode2.form.dtls'
                ]}
                *}
            </div>
            <div class="total_sum my-4 text-md-right pr-4 col-lg-4">
                <p>Общая сумма: <span class="total_price h5 font-weight-bold ml-2 ms2_total_cost">{$total.cost}</span><span class="total_price ml-2 h5 font-weight-bold">р.</span></p>
                <a href="oformlenie-zakaza/" class="cart_refresh"></a>
            </div>
        </div>

        {/if}


    </div>




