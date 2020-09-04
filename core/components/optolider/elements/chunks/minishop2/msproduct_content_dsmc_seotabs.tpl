<div id="msProduct" class="align-items-center">
    <div class="container">
        {if 'pagetitle' | resource ?}
            <h1 class="text-md-left text-uppercase font-weight-bold" itemprop="name">{'pagetitle' | resource}</h1>
        {/if}
        <div class="d-flex flags">
            {if 'Новинка' in list $_modx->resource.types}
                <img src="css/images/ic.png">
            {/if}
            {if 'Избранное' in list $_modx->resource.types}
                <img src="css/images/ic2.png">
            {/if}
            {if 'Распродажа' in list $_modx->resource.types}
                <img src="css/images/ic3.png">
            {/if}
            {if 'Одностраничникам' in list $_modx->resource.types}
                <img src="css/images/ic4.png">
            {/if}

        </div>
        <div class="row">
            <div class="col-12 col-md-12 col-lg-5">
                [[!msGalleryZoom]]
                [[!msGallery?&tpl=`tpl.msGalZoom_three_vert_dsmc`]]

            </div>
            <div class="col-12 col-md-12 col-lg-7">
                <form class="form-horizontal ms2_form" method="post">
                    <input type="hidden" name="id" value="[[*id]]"/>
                    <div class="row">

                        <div class="col-md-7 col-lg-8">

                            <div class="form-group row align-items-center">
                            </div>

                            {if $_modx->resource.min_count == 1}
                                {'!msSalePrice' | snippet : [
                                'tpl' => 'tpl.msPrice.drop.cart.dsmc'
                                ]}
                            {/if}
                            <div class="form-group align-items-center border-top border-bottom pt-2 pb-3">
                                <div class="row">
                                    <div class="col-6">
                                        <label class="col-form-label small text-light">Оптовые цены</label>
                                        <div class="h2 font-weight-bold">
                                            {'!msSalePrice' | snippet : [
                                            'tpl' => 'tpl.msPrice.dsmc'
                                            ]}

                                        </div>
                                    </div>
                                    <div class="col-6 d-flex flex-column">
                                        <label class="col-form-label small text-light">Кол-во товара:</label>
                                        <div class="form-group mb-0">
                                            <div class="input-group">
                                                <span class="input_count_action input-group-text minus input-group-prepend"
                                                      data-value="-1">
                                                    –
                                                </span>
                                                <input type="number" name="count"
                                                       value="{if $_modx->resource.min_count != ''}{$_modx->resource.min_count}{else}1{/if}"
                                                       id="product_price" class="form-control text-center">
                                                <span class="input_count_action input-group-text plus input-group-append">
                                                    +
                                                </span>
                                            </div>
                                        </div>


                                        {if $_modx->resource.min_count != ''}
                                        <div class="min_count text-center"><small>Заказ от
                                                <b>{$_modx->resource.min_count} шт</b></small>
                                            {else}
                                            <div class="min_count text-center"><small>Заказ от <b>1 шт</b></small>
                                                {/if}
                                            </div>
                                        </div>
                                    </div>

                                </div>


                                <ul class="list-group section-option my-4">
                                    {if $_modx->resource.article ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Артикул</span><span>{$_modx->resource.article}</span>
                                        </li>{/if}
                                    {if $_modx->resource.model ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Модель</span><span>{$_modx->resource.model}</span>
                                        </li>{/if}
                                    {if $_modx->resource.color != ''}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between">
                                            <span>Цвет</span><span>
                      {foreach $_modx->resource.color as $color last=$last}
                          {if $last}
                              {$color}
                          {else}
                              {$color},
                          {/if}
                      {/foreach}
                      </span></li>
                                    {/if}
                                    {if $_pls['vendor.name'] ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between">
                                        <span>Бренд</span><span>{$_pls['vendor.name']}</span></li>{/if}
                                    {if $_modx->resource.weight ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between">
                                        <span>Вес</span><span>{$_modx->resource.weight} г</span></li>{/if}
                                    {if $_modx->resource.size.0 ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Размер</span><span>{$_modx->resource.size.0}  см</span>
                                        </li>{/if}
                                    {if $_modx->resource.made_in ?}
                                        <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Cтрана производитель</span><span>{$_modx->resource.made_in}</span>
                                        </li>{/if}
                                </ul>

                                <div class="form-group row align-items-center">

                                    <div class="col-12 col-md-12 text-center text-md-left">
                                        {if $_modx->resource.notavailable == 1}
                                            <div class="row no-gutters">
                                                <div class="col-md-6">
                                                    <button data-target="#oneClickForm" data-toggle="modal"
                                                            class="mvtForms2OneClickForm btn btn-warning btn-lg col-12 rounded-0"
                                                            data-title="Запрос товара"
                                                            data-product="{'pagetitle' | resource}">
                                                        Оставить заявку
                                                    </button>
                                                </div>
                                                <div class="col-md-6">
                                                    <button class="btn btn-secondary btn-lg col-12 rounded-0 disabled">Нет в наличии</button>
                                                </div>
                                            </div>
                                        {else}
                                            <div class="row no-gutters">
                                                <div class="col-md-6">
                                                    {if $_modx->user.id > 0}
                                                        <button type="button" data-target="#oneClickForm"
                                                                data-toggle="modal" data-title="Быстрый заказ"
                                                                data-product="{'pagetitle' | resource}"
                                                                class="mvtForms2OneClickForm btn btn-lg btn-warning col-12 rounded-0">
                                                            Купить в 1 клик
                                                        </button>
                                                    {/if}
                                                </div>
                                                <div class="col-md-6">
                                                    <button type="submit"
                                                            class="btn btn-success btn-lg col-12 rounded-0"
                                                            name="ms2_action" value="cart/add"
                                                            onclick="ym(29584835, 'reachGoal', 'tovar_korzina'); return true;">
                                                        [[%ms2_frontend_add_to_cart]]
                                                    </button>
                                                </div>
                                            </div>
                                        {/if}
                                    </div>
                                </div>

                            </div>

                            <div class="col-md-5 col-lg-4 my-4 mt-lg-4 mb-md-0">
                                {'!msSalePrice' | snippet : [
                                'tpl' => 'tpl.msSalePrice.cart.dsmc'
                                ]}

                                <div class="product_banner d-none d-lg-block">
                                    {'!BannerY' | snippet : [
                                    'position' => 3
                                    'tpl' => 'tpl.banner.product'
                                    ]}
                                </div>
                            </div>
                        </div>

                </form>

            </div>
            </form>
        </div>
    </div>
</div>
</div>

<div class="section-tabs my-5">

    {'!seoTabs' | snippet : [
    'tpl' => 'dsmc.tpl.seoTabs'
    ]}

</div>

<div class="container">
    <h3 class="mt-5 mb-2 h2"><span class="text-primary">Похожие</span> товары</h3>
    <div class="row catalog_0718 card_similar_block">

        {'msProducts' | snippet : [
        'tpl' => 'row.product.slider.dsmc',
        'resources' => ''
        'sortBy' => 'RAND()'
        'limit' => 4,
        'parents' => $_modx->resource.tv_parent,
        'includeContent' => 1,
        'includeTVs' => 'pol,mehanik,popular,price,new,sale,korpus,braslet,brand,oldprice,razmers,color,sostav,notavailable'
        'prepareTVs' => 1,
        'processTVs' => 1
        ]}

    </div>

    {set $idv = '!addToViewed' | snippet}

    <h3 class="mt-5 mb-2 h2">Вы <span class="text-danger">смотрели</span></h3>
    <div class="row catalog_0718 card_viewed_block">
        {'!msProducts' | snippet : [
        'tpl' => 'row.product.slider.dsmc',
        'resources' => $idv,
        'sortBy' => 'RAND()'
        'limit' => 4,
        'parents' => 4492,
        'includeContent' => 1,
        'includeTVs' => 'pol,mehanik,popular,price,new,sale,korpus,braslet,brand,oldprice,razmers,color,sostav,notavailable'
        'prepareTVs' => 1,
        'processTVs' => 1
        ]}
    </div>
</div>

{'!mvtForms2' | snippet : [
'form'=>'one_click',
]}