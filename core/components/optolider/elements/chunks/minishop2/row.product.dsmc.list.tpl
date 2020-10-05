<div class="col-sm-6 col-md-6 col-lg-4 col-xl-12 py-2">
    <div class="card prod_item list d-flex flex-row">
        <div class="product-info-title px-lg-3 px-1 px-lg-0 col-12 d-lg-none d-block">
            <div class="line-height-1 mb-1 title"><a class="text-success" href="{$uri}">{$pagetitle}</a></div>

        </div>
        <div class="col-lg-2 col-4">
            <div class="d-flex flex-xl-column flags">
                {foreach $types as $item}

                {switch $item}
                {case 'Новинка'}
                <img src="css/images/ic.png">
                {case 'Избранное'}
                <img src="css/images/ic2.png">
                {case 'Распродажа'}
                <img src="css/images/ic3.png">
                {case 'Одностраничникам'}
                <img src="css/images/ic4.png">
                {/switch}

                {/foreach}

            </div>
            {if $image?}
            <img src="{$image  | phpthumbon : "w=183&h=248&q=70&bg=FFFFFF" }" class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
            {else}
            <img src="{'assets_url' | option}components/minishop2/img/web/ms2_small.png"
                 srcset="{'assets_url' | option}components/minishop2/img/web/ms2_small@2x.png 2x"
                 class="mw-100" alt="{$pagetitle}" title="{$pagetitle}"/>
            {/if}

            <div class="min_count text-center d-lg-none d-block"><small>Заказ от <b>{$min_count} шт</b></small></div>

        </div>
        <div class="col-lg-7 col-8 bord px-lg-2 px-0" style="border-right:1px solid #dee2e6;">
            <div class="line-height-1 mb-1 title h6 d-lg-block d-none"><a class="text-dark font-weight-bold" href="{$uri}">{$pagetitle}</a></div>
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
            <form method="post" id="dynamic-{$id}" class="ms2_form">
                <input type="hidden" name="id" value="{$id}">
                <input type="hidden" name="count" value="1">
                <input type="hidden" name="options" value="[]">

                <div class="row">

                    <div class="col-12 d-lg-none d-block">
                        <div class="product-info-price product-info">
                            <ul class="list-group mt-2">

                                {if $min_count == 1 || $min_count == ''}
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
                        </div>
                    </div>
                    <div class="col-lg-5 col-12">
                        <div class="form-group mb-0  mt-2">
                            <div class="input-group">
                                <span class="input_count_action input-group-text minus input-group-prepend" data-value="-1">
                                    –
                                </span>
                                <input type="number" name="count" value="{if $min_count != 1 || $min_count != ''}{$min_count}{else}1{/if}" id="product_price" class="form-control text-center">
                                <span class="input_count_action input-group-text plus input-group-append" >
                                    +
                                </span>
                            </div>
                        </div>
                        <div class="min_count text-center d-lg-block d-none"><small>Заказ от <b>{$min_count ?: '1'} шт</b></small></div>
                    </div>

                    <div class="col-lg-5 col-12">
                        {if $notavailable == 1}
                        <button class="btn btn-secondary mt-2 btn-block">
                            Нет в наличии
                        </button>
                        {else}
                        <button class="btn btn-success mt-2 btn-block" type="submit" name="ms2_action" value="cart/add">
                            Купить
                        </button>
                        {/if}
                    </div>

                </div>
            </form>


        </div>
        <div class="col-3 d-lg-block d-none">
            <div class="product-info-price product-info">
                <ul class="list-group mt-2">
                    {if $min_count == 1 || $min_count == ''}
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
            </div>
        </div>
    </div>
</div>