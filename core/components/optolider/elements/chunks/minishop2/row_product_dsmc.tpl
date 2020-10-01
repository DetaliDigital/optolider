<div class="col-sm-6 col-md-6 col-lg-3 col-xl-3 py-2">
    <div class="card prod_item list d-flex flex-row">


        <div class="product-info-title px-lg-3 px-1 px-lg-0 col-12 d-lg-none d-block">
            <div class="line-height-1 mb-1 title"><a class="text-success" href="{$_modx->makeUrl($id)}">{$pagetitle}</a></div>

        </div>


        <div class="image-frame mb-3 text-center justify-content-center image col-4 col-lg-12">

            <div class="d-flex flex-xl-column flags">
                {if 'Новинка' in list $types}
                <img src="css/images/ic.png">
                {/if}
                {if 'Избранное' in list $types}
                <img src="css/images/ic2.png">
                {/if}
                {if 'Распродажа' in list $types}
                <img src="css/images/ic3.png">
                {/if}
                {if 'Одностраничникам' in list $types}
                <img src="css/images/ic4.png">
                {/if}
            </div>
            {if $image?}
            <img src="{$image  | phpthumbon : "w=183&h=248&q=70&bg=FFFFFF" }" class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
            {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
            {/if}

            <div class="d-lg-none d-block">
                {if $min_count != 0}
                <div class="min_count text-center"><small>Заказ <br> от <b>{$min_count} шт</b></small></div>
                {else}
                <div class="min_count text-center"><small>Заказ <br> от <b>1 шт</b></small></div>
                {/if}
            </div>

        </div>
        <div class="product-info col-8 col-lg-12 px-lg-2 px-0">

            <div class="product-info-title px-3 px-lg-0 d-lg-block d-none">
                <div class="line-height-1 mb-1 title"><a class="text-dark font-weight-bold" href="{$_modx->makeUrl($id)}">{$pagetitle}</a></div>

            </div>
            <div class="product-info-price py-2 d-lg-block d-none">

                {foreach $mssp as $item first = $first last = $last}

                {if $first}
                <span class="price font-primary">
    				        <strong class="text-color-dark h5 font-weight-bold"><small class="text-dark font-weight-semibold">от</small> {$item.price}</strong>
                    </span>
                {/if}

                {if $last}
                <span class="price font-primary">
    				        <strong class="text-color-dark h5 font-weight-bold"><small class="ml-1 text-dark font-weight-semibold">до</small> {$item.price} {'ms2_frontend_currency' | lexicon}</strong>
                    </span>
                {/if}

                {/foreach}
            </div>


            <ul class="list-group mt-2 d-lg-none d-block">
                {if $min_count == 1 || $min_count == 1}
                <li class="list-group-item list-group-item-success d-flex justify-content-between align-items-center">
                    Дропшиппинг
                    <span class="font-weight-bold">{$mssp.1.price} {'ms2_frontend_currency' | lexicon}</span>
                </li>
                {/if}
                {foreach $mssp as $item }
                <li class="list-group-item  d-flex justify-content-between align-items-center">
                    от {$item.count} {'ms2_frontend_count_unit' | lexicon}
                    <span class="font-weight-bold">{$item.price} {'ms2_frontend_currency' | lexicon}</span>
                </li>
                {/foreach}
            </ul>




            <div class="px-lg-3 px-1 pt-2 d-lg-none d-block">

                <form method="post" id="dynamic-{$id}" class="ms2_form">
                    <input type="hidden" name="id" value="{$id}">
                    <input type="hidden" name="count" value="1">
                    <input type="hidden" name="options" value="[]">

                    <div class="form-group mb-0  mt-2">
                        <div class="input-group">
                                <span class="input_count_action input-group-text minus input-group-prepend" data-value="-1">
                                    –
                                </span>
                            <input type="number" name="count" value="{if $min_count != 0}{$min_count}{else}1{/if}" id="product_price" class="form-control text-center">
                            <span class="input_count_action input-group-text plus input-group-append" >
                                    +
                                </span>
                        </div>
                    </div>

                    {if $available != 1}
                    <button class="btn btn-secondary mt-3 btn-block">
                        Нет в наличии
                    </button>
                    {else}
                    <button class="btn btn-success mt-3 btn-block" type="submit" name="ms2_action" value="cart/add">
                        Купить
                    </button>
                    {/if}
                </form>
            </div>



        </div>
        <div class="product-hidden hidden d-lg-flex d-none">
            <form method="post" id="dynamic-{$id}" class="ms2_form">
                <input type="hidden" name="id" value="{$id}">
                <input type="hidden" name="count" value="1">
                <input type="hidden" name="options" value="[]">
                <div class="px-3">
                    <div class="text-color-default line-height-1 mb-3 title font-weight-bold"><a href="{$_modx->makeUrl($id)}">{$pagetitle}</a></div>

                    {*
                    {'msSalePrice' | snippet : [
                    'product' => $id,
                    'tpl' => 'tpl.msPrice.dsmc'
                    ]}
                    *}
                </div>
                <div class="product-info-price-1 mt-3 mb-2">
                    <ul class="list-group">
                        {if $min_count == 1 || $min_count == 1}
                        <li class="list-group-item list-group-item-success d-flex justify-content-between align-items-center">
                            Дропшиппинг
                            <span class="font-weight-bold">{$mssp.1.price} {'ms2_frontend_currency' | lexicon}</span>
                        </li>
                        {/if}
                        {foreach $mssp as $item }
                        <li class="list-group-item  d-flex justify-content-between align-items-center">
                            от {$item.count} {'ms2_frontend_count_unit' | lexicon}
                            <span class="font-weight-bold">{$item.price} {'ms2_frontend_currency' | lexicon}</span>
                        </li>
                        {/foreach}
                    </ul>
                    <div class="p-4">
                        <div class="form-group mb-0">
                            <div class="input-group">
                                <span class="input_count_action input-group-text minus input-group-prepend" data-value="-1">
                                    –
                                </span>
                                <input type="number" name="count" value="{if $min_count != 0}{$min_count}{else}1{/if}" id="product_price" class="form-control text-center">
                                <span class="input_count_action input-group-text plus input-group-append" >
                                    +
                                </span>
                                <div class="col-12">
                                    {if $min_count != 0}
                                    <div class="min_count text-center"><small>Заказ от <b>{$min_count} шт</b></small></div>
                                    {else}
                                    <div class="min_count text-center"><small>Заказ от <b>1 шт</b></small></div>
                                    {/if}
                                </div>
                            </div>
                        </div>

                        {if $available != 1}
                        <button class="btn btn-secondary mt-3 btn-block">
                            Нет в наличии
                        </button>
                        {else}
                        <button class="btn btn-success mt-3 btn-block" type="submit" name="ms2_action" value="cart/add">
                            Купить
                        </button>
                        {/if}
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>