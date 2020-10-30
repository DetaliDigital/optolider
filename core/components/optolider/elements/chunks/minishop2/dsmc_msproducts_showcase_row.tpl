<div class="{$rowPlaceholders.class}">
    <div class="card product">
        <div class="card-title d-block d-xl-none">
            <a href="{$uri}">{$pagetitle}</a>
        </div>
        <div class="card-img text-center">
            <img class="img-fluid" src="{$image  | phpthumbon : "w=183&h=248&q=70&bg=FFFFFF"}">
        </div>
        <div class="card-xl-overlay">
            <div class="overlay-text overlay-body">
                <div class="card-title d-none d-xl-block">
                    <a href="{$uri}">{$pagetitle}</a>
                </div>
                <form method="post" class="ms2_form">
                    <input type="hidden" name="id" value="{$id}">
                    <input type="hidden" name="count" value="1">
                    <input type="hidden" name="options" value="[]">
                    <div class="card-price-all pt-4 pb-2 py-md-4">
                        <dl class="row justify-content-between">
                            {if $min_count == 1 || $min_count == ''}
                            <dd class="col-7 text-success">Дропшипинг</dd>
                            <dt class="col-5 text-success">{$mssp.1.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</dt>
                            {/if}
                            {foreach $mssp as $item}
                            <dd class="col-7">от {$item.count} {'ms2_frontend_count_unit' | lexicon}</dd>
                            <dt class="col-5">{$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</dt>
                            {/foreach}
                        </dl>
                    </div>
                    <div class="card-count">
                        <input class="form-control form-spinner" name="count" value="1" min="1" max="1000" step="1">
                        <div class="card-title text-sm text-center font-weight-bold pt-2">
                            Заказ от {$min_count ?: '1'} шт
                        </div>
                    </div>
                    <div class="action pt-0 pt-md-4">
                        <button class="btn btn-success btn-block" name="ms2_action" value="cart/add">Купить</button>
                    </div>
                </form>
            </div>
        </div>
        <div class="card-body d-none d-xl-block">
            <div class="card-title">
                <a href="{$uri}">{$pagetitle}</a>
            </div>
            <div class="card-text">
                <div class="card-price">
                    {foreach $mssp as $item first = $first last = $last}
                    {if $first}
                        от {$item.price | number : 0 : '.' : ' '}
                    {/if}
                    {if $last}
                        до {$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}
                    {/if}
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</div>