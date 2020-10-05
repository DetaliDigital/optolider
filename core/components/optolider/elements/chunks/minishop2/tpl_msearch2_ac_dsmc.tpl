<div class="mse2-ac-item my-3">
    <form method="post" id="dynamic-{$id}" class="ms2_form">
        <input type="hidden" name="id" value="{$id}">
        <input type="hidden" name="count" value="4">
        <input type="hidden" name="options" value="[]">
        <div class="row">
            <div class="col-xl-1 col-2">
                <img src="{$image | phpthumbon : 'w=70&h=50&bg=fff'}">
            </div>
            <div class="col-xl-5 col-10 pl-4 pl-md-0">
                <a href="{$id | url}" class="font-weight-bold">{$pagetitle}</a>
                <div class="intro  d-block d-xl-flex">
                    <div class="flags d-block d-xl-flex">
                        {foreach $types as $item}
                        {switch $item}
                        {case 'Новинка'}
                        <span class="badge badge-danger mr-2"><i class="new_icon"></i>Новинка</span>
                        {case 'Избранное'}
                        <span class="badge badge-success mr-2"><i class="sale_icon"></i>Распродажа</span>
                        {case 'Распродажа'}
                        <span class="badge badge-success mr-2"><i class="sale_icon"></i>Распродажа</span>
                        {case 'Одностраничникам'}
                        <span class="badge badge-primary mr-2"><i class="odnostranichnikam_icon"></i>Одностраничникам</span>
                        {/switch}
                        {/foreach}
                    </div>
                    <div class="min_count mr-2 d-flex align-items-center"><small>Заказ от <b>{$min_count} шт</b></small></div>
                    <div class="color d-flex align-items-center">
                        {if $color != ''}<span class="mr-2">Цвет:</span>
                        {foreach $color as $color last=$last}
                        {if $last}
                        {$color}
                        {else}
                        {$color},
                        {/if}
                        {/foreach}
                        {/if}
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-12 d-none d-md-flex flex-md-column justify-content-center">
                <div class="row">
                    <div class="col-xl-5 col-12 my-3 my-md-0 d-flex align-items-center justify-content-center">
                        <small>
                            {'msSalePrice' | snippet : [
                            'product' => $id,
                            'tpl' => 'tpl.msPrice.dsmc.ac'
                            ]}
                        </small>
                    </div>
                    <div class="col-4">
                        <div class="form-group mb-0">
                            <div class="input-group">
                                <span class="input_count_action input-group-text minus input-group-prepend" onclick="counter_minus({$id})" data-value="-1" data-id="{$id}">
                                    –
                                </span>
                                <input type="number" name="count" id="count-{$id}" value="1" class="form-control text-center m2searchinput">

                                <span class="input_count_action input-group-text plus input-group-append" onclick="counter_plus({$id})" data-value="1" data-id="{$id}">
                                    +
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-2 d-flex align-items-center justify-content-center">
                        <button class="btn btn-success btn-block" type="submit" name="ms2_action" value="cart/add">
                            <i class="fas fa-shopping-cart"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>