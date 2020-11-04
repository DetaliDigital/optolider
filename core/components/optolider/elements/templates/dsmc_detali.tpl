{extends 'template:Базовый шаблон'}

{block 'main'}
{* Получаем массив mssaleprice *}

{set $saleprice = '!dtlsSalePrice' | snippet}

{* Исключаем из массива 1шт *}

{if 'min_count' | resource != 1}
{unset $saleprice.1}
{/if}

<div class="main pt-4" itemprop="mainContentOfPage">
    <div class="container">
        <span itemprop="breadcrumb">{include 'dsmc_crumbs'}</span>
    </div>
    <div class="my-5" itemscope itemtype="http://schema.org/Product">
        <div id="msProduct" class="align-items-center">
            <div class="container">
                {if 'pagetitle' | resource ?}
                <h1 class="text-md-left text-uppercase font-weight-bold" itemprop="name">{'pagetitle' | resource}</h1>
                {/if}
                <div class="d-flex flags">

                    {foreach $_modx->resource.types as $item}
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

                                    {if 'min_count' | resource == 1 or 'min_count' | resource == ''}
                                    <div class="form-group align-items-center">
                                        <label class="col-form-label small text-light">Цена по дропшиппингу:</label>
                                        <div class="h5 font-weight-bold" itemprop="offers" itemscope=""
                                             itemtype="http://schema.org/Offer">
                                            <meta itemprop="priceCurrency" content="RUB">
                                            <span class="font-weight-bold"><span itemprop="price">{$saleprice.1.price | number : 0 : '.' : ' '}</span> {'ms2_frontend_currency' | lexicon}</span>
                                        </div>
                                    </div>
                                    {/if}

                                    <div class="form-group align-items-center border-top border-bottom pt-2 pb-3">
                                        <div class="row">
                                            <div class="col-6">
                                                <label class="col-form-label small text-light">Оптовые цены</label>
                                                <div class="h2 font-weight-bold">

                                                    {foreach $saleprice as $key => $item first=$first last=$last}

                                                    {if 'min_count' | resource != 1 or 'min_count' | resource != ''}

                                                    {unset $key.1}

                                                    {/if}
                                                    {if $first}
                                                    <span class="price font-primary">
                                                        <strong class="text-color-dark h5 font-weight-bold">
                                                            <small class="text-dark font-weight-semibold">от</small> {$item.price | number : 0 : '.' : ' '}</strong>
                                                        </span>
                                                    {/if}

                                                    {if $last}
                                                    <span class="price font-primary">
                                                        <strong class="text-color-dark h5 font-weight-bold">
                                                            <small class="text-dark font-weight-semibold">до</small> {$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</strong>
                                                        </span>
                                                    {/if}
                                                    {/foreach}

                                                </div>
                                            </div>
                                            <div class="col-6 d-flex flex-column">
                                                <label class="col-form-label small text-light">Кол-во товара:</label>
                                                <input class="form-control form-spinner" name="count" value="1" min="1" max="1000" step="1">

                                                {if $_modx->resource.min_count != ''}
                                                <div class="min_count text-center"><small>Заказ от
                                                        <b>{$_modx->resource.min_count} шт</b></small>
                                                    {else}
                                                    <div class="min_count text-center"><small>Заказ от <b>1
                                                                шт</b></small>
                                                        {/if}
                                                    </div>
                                                </div>
                                            </div>

                                        </div>


                                        <ul class="list-group section-option my-4">
                                            {if $_modx->resource.article ?}
                                            <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Артикул</span><span>{$_modx->resource.article}</span>
                                            </li>
                                            {/if}
                                            {if $_modx->resource.model ?}
                                            <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Модель</span><span>{$_modx->resource.model}</span>
                                            </li>
                                            {/if}
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
                                                <span>Бренд</span><span>{$_pls['vendor.name']}</span></li>
                                            {/if}
                                            {if $_modx->resource.weight ?}
                                            <li class="list-group-item px-0 py-2 d-flex justify-content-between">
                                                <span>Вес</span><span>{$_modx->resource.weight} г</span></li>
                                            {/if}
                                            {if $_modx->resource.size.0 ?}
                                            <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Размер</span><span>{$_modx->resource.size.0}  см</span>
                                            </li>
                                            {/if}
                                            {if $_modx->resource.made_in ?}
                                            <li class="list-group-item px-0 py-2 d-flex justify-content-between"><span>Cтрана производитель</span><span>{$_modx->resource.made_in}</span>
                                            </li>
                                            {/if}
                                        </ul>

                                        <div class="form-group row align-items-center">

                                            <div class="col-12 col-md-12 text-center text-md-left">
                                                {if $_modx->resource.notavailable == 1}
                                                <div class="row no-gutters">
                                                    <div class="col-md-6">
                                                        <button class="btn btn-secondary btn-lg col-12 rounded-0 disabled">
                                                            Нет в наличии
                                                        </button>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <button data-target="#oneClickForm" data-toggle="modal"
                                                                class="mvtForms2OneClickForm btn btn-warning btn-lg col-12 rounded-0"
                                                                data-title="Запрос товара"
                                                                data-product="{'pagetitle' | resource}">
                                                            Оставить заявку
                                                        </button>
                                                    </div>

                                                </div>
                                                {else}
                                                <div class="row no-gutters">
                                                    <div class="col-md-6">
                                                        <button type="submit"
                                                                class="btn btn-success btn-lg col-12 rounded-0"
                                                                name="ms2_action" value="cart/add"
                                                                onclick="ym(29584835, 'reachGoal', 'tovar_korzina'); return true;">
                                                            [[%ms2_frontend_add_to_cart]]
                                                        </button>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <button type="button" data-target="#oneClickForm"
                                                                data-toggle="modal" data-title="Быстрый заказ"
                                                                data-product="{'pagetitle' | resource}"
                                                                class="mvtForms2OneClickForm btn btn-lg btn-warning col-12 rounded-0">
                                                            Быстрый заказ
                                                        </button>
                                                    </div>
                                                </div>
                                                {/if}
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-md-5 col-lg-4 my-4 mt-lg-4 mb-md-0">

                                        <div class="list-cart-price">
                                            <li class="list-group-item  d-flex justify-content-between align-items-center font-weight-bold text-light">
                                                Объем
                                                <span>Цена за шт</span>
                                            </li>
                                            {foreach $saleprice as $item}
                                            {if $item.price != 0}
                                            <li class="list-group-item d-flex justify-content-between align-items-center text-success ">
                                                от {$item.count} {'ms2_frontend_count_unit' | lexicon}
                                                <span class="font-weight-bold text-dark">{$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}</span>
                                            </li>
                                            {/if}
                                            {/foreach}
                                        </div>

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

    <div class="section-tabs">
        {'!seoTabs' | snippet : [
        'tpl' => 'dsmc.tpl.seoTabs'
        ]}
    </div>

    {'!preTools' | snippet : [
    'parents' => 'parent' | resource,
    'prepareSnippet' => 'prepareSnippet',
    'tplWrapper' => 'dsmc.msProducts.showcase.wrapper',
    'tpl' => 'dsmc.msProducts.row',
    'limit' => 4,
    'rowPlaceholders' => [
    'class' => 'swiper-slide'
    ],
    'wrapperPlaceholders' => [
    'class_section' => 'bg-white py-5'
    'title' => '<h3 class="h2"><span class="text-info">Похожие</span> товары</h3>' ,
    'swiper' => 1
    ]
    ]}

    {set $idv = '!addToViewed' | snippet}

    {'preTools' | snippet : [
    'parents' => 2
    'resources' => $idv,
    'prepareSnippet' => 'prepareSnippet',
    'tplWrapper' => 'dsmc.msProducts.showcase.wrapper',
    'tpl' => 'dsmc.msProducts.row',
    'limit' => 4,
    'rowPlaceholders' => [
    'class' => 'swiper-slide'
    ],
    'wrapperPlaceholders' => [
    'class_section' => 'bg-light py-5'
    'title' => '<h3 class="h2">Вы <span class="text-danger">смотрели</span></h3>' ,
    'swiper' => 1
    ]
    ]}

    {'!mvtForms2' | snippet : [
    'form'=>'one_click',
    ]}
</div>
</div>

{/block}