<div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-12 py-2 px-xl-0">
    <div class="cart product product-horizontal">
        <div class="row no-gutters p-0 p-xl-4">
            <h5 class="card-title d-block d-xl-none">
                <a href="{$uri}">{$pagetitle}</a>
            </h5>
            <div class="col-4 col-md-1">
                <img class="img-fluid" src="{$image  | phpthumbon : " w=185&h=250&q=70&bg=FFFFFF"}">
            </div>
            <div class="col-8 col-md-11">
                <div class="card-body d-flex flex-wrap justify-content-between pb-0 px-0">
                    <div class="col-12 col-lg-8 px-3 pl-xl-5 d-flex flex-column order-1 order-xl-0">
                        <h5 class="card-title d-none d-xl-block">
                            <a href="{$uri}">{$pagetitle}</a>
                        </h5>
                        <div class="card-price d-none d-xl-block">
                            {foreach $mssp as $item first = $first last = $last}
                            {if $first}
                            от {$item.price | number : 0 : '.' : ' '}
                            {/if}
                            {if $last}
                            до {$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}
                            {/if}
                            {/foreach}
                        </div>
                        <form method="post" class="ms2_form">
                            <input type="hidden" name="id" value="{$id}">
                            <input type="hidden" name="count" value="1">
                            <input type="hidden" name="options" value="[]">
                            <div class="d-flex flex-wrap">
                                <div class="card-count col-12 col-xl-6 px-0 pr-xl-5">
                                    <input class="form-control form-spinner" name="count" value="1" min="1" max="1000"
                                           step="1">
                                    <div class="card-title text-sm text-center font-weight-bold pt-2">
                                        Заказ от {$min_count ?: '1'} шт
                                    </div>
                                </div>
                                <div class="card-action col-12 col-xl-6 px-0">
                                    {if $available != 1}
                                    <button class="btn btn-secondary btn-block">
                                        Нет в наличии
                                    </button>
                                    {else}
                                    <div class="action">
                                        <button class="btn btn-success btn-block" name="ms2_action" value="cart/add">Купить</button>
                                    </div>
                                    {/if}
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-price-all col-12 col-lg-4 pb-2 pb-xl-0 order-0 order-xl-1">
                        <dl class="row justify-content-between mb-0">
                            {if $min_count == 1 || $min_count == ''}
                            <dd class="col-7 text-success d-none d-xl-block">Дропшипинг</dd>
                            <dt class="col-5 text-success d-none d-xl-block">{$mssp.1.price | number : 0 : '.' : ' '}
                                {'ms2_frontend_currency' | lexicon}
                            </dt>
                            {/if}
                            {foreach $mssp as $item}
                            <dd class="col-6 col-xl-7">от {$item.count} {'ms2_frontend_count_unit' | lexicon}</dd>
                            <dt class="col-6 col-xl-5">{$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' |
                                lexicon}
                            </dt>
                            {/foreach}
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>