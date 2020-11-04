<div class="{$rowPlaceholders.class}">
    <div class="card product">

        <div class="card-title d-block d-xl-none">
            <a href="{$uri}">{$pagetitle}</a>
        </div>

        <div class="card-img text-center">
            <img class="img-fluid" src="{$image  | phpthumbon : "w=185&h=250&q=70&bg=FFFFFF"}">
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
                    <div class="card-price-all pb-2 py-xl-4">
                        <dl class="row justify-content-between">
                            {if $min_count == 1 || $min_count == ''}
                            <dd class="col-7 text-success d-none d-xl-block">Дропшипинг</dd>
                            <dt class="col-5 text-success d-none d-xl-block">{$mssp.1.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</dt>
                            {/if}
                            {foreach $mssp as $item}
                            <dd class="col-6 col-xl-7">от {$item.count} {'ms2_frontend_count_unit' | lexicon}</dd>
                            <dt class="col-6 col-xl-5">{$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</dt>
                            {/foreach}
                        </dl>
                    </div>
                    <div class="card-count">
                        <input class="form-control form-spinner" name="count" value="1" min="1" max="1000" step="1">
                        <div class="card-title text-sm text-center font-weight-bold pt-2">
                            Заказ от {$min_count ?: '1'} шт
                        </div>
                    </div>
                    {if $available != 1}
                    <button class="btn btn-secondary mt-3 btn-block">
                        Нет в наличии
                    </button>
                    {else}
                    <div class="action pt-0 pt-md-4">
                        <button class="btn btn-success btn-block" name="ms2_action" value="cart/add">Купить</button>
                    </div>
                    {/if}
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

        <div class="d-flex flex-xl-column flags position-absolute">
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

    </div>
</div>