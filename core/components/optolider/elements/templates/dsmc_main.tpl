{extends 'template:Базовый шаблон'}

{block 'main'}
<div class="main my-5 top-banner" id="top-banner">
    <div class="container">
        <div class="row">
            <div class="sidebar col-md-4 col-lg-3 order-2 order-md-1 bottom-part position-initial">
                {include 'menu_leftbar'}
            </div>
            <div class="col-lg-12 col-xl-9 order-1 order-md-2 mb-0 mb-md-0">
                {set $rows = json_decode($_modx->resource.slider, true)}
                {set $ids = 0}
                {set $c = 0}
                <div id="carouselExampleIndicators" class="carousel slide slide-main" data-ride="carousel">
                    <ol class="carousel-indicators">
                        {foreach $rows as $row}
                        <li data-target="#carouselExampleIndicators" data-slide-to="{$ids++}" {if $c++ == 0}class="active"{/if}></li>
                        {/foreach}
                    </ol>
                    <div class="carousel-inner">
                        {set $rows = json_decode($_modx->resource.slider, true)}
                        {set $ids = 0}
                        {foreach $rows as $row}
                        <div class="carousel-item {if $ids++ == 0}active{/if}">
                            <a href="{$row.set}" title="" target="_blank"><img src="{$row.image}" alt="" /></a>
                        </div>
                        {/foreach}
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <div class="banner_main">
                    {set $rows = json_decode($_modx->resource.new_main_top_banner1, true)}
                    <div class="row my-3">
                        {set $idx_banner = 0}
                        {foreach $rows as $row}
                        <div class="col-md-6 col-lg-6 {if $idx_banner++ == 1}mt-md-0 mt-3{/if}">
                            <div class="banner_item">
                                <a href="{$row.link}"><img src="{$row.image}" class="img-fluid" alt="" /></a>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{if $_modx->resource.season_pop_cat != ''}
<div class="p-cat-section" id="p-cat-section">
    <div class="container">
        <h3>Подарки для любимых</h3>
        <div class="p-cat-block clearfix">

            {'!pdoResources' | snippet : [
            'parents' => 2,
            'resources' => $_modx->resource.season_pop_cat,
            'includeTVs' => 'image,sale,new,min_price_category',
            'tvPrefix' => '',
            'tpl' => 'category.main.tpl',
            'limit' => 7,
            'depth' => 10,
            'where' => ['isfolder' => 1]
            ]
            }

        </div><!--/p-cat-block-->
    </div>
</div>
{/if}



{'!preTools' | snippet : [
'parents' => 'tv_main_section_1_parent' | tv | fromJSON | join ?: 9999999,
'prepareSnippet' => 'prepareSnippet',
'tplWrapper' => 'dsmc.msProducts.showcase.wrapper',
'tpl' => 'dsmc.msProducts.row',
'limit' => 8,
'wrapIfEmpty' => 0,
'optionFilters' => [
'taxonomy_product' => 'main'
] | json_encode,
'rowPlaceholders' => [
'class' => 'swiper-slide'
],
'wrapperPlaceholders' => [
'class_section' => 'section py-5',
'color_section' => '#EAF4F0'
'title' => 'tv_main_section_1_parent' | dsmc_parent_name,
'more' => 1,
'parent' => 'tv_main_section_1_parent' | tv | fromJSON | join
'swiper' => 1
]
]}

{'!preTools' | snippet : [
'parents' => 'tv_main_section_2_parent' | tv | fromJSON | join ?: 9999999,
'prepareSnippet' => 'prepareSnippet',
'tplWrapper' => 'dsmc.msProducts.showcase.wrapper',
'tpl' => 'dsmc.msProducts.row',
'limit' => 8,
'wrapIfEmpty' => 0,
'optionFilters' => [
'taxonomy_product' => 'main'
] | json_encode,
'rowPlaceholders' => [
'class' => 'swiper-slide'
],
'wrapperPlaceholders' => [
'class_section' => 'section py-5'
'title' => 'tv_main_section_2_parent' | dsmc_parent_name,
'color_section' => '#AFDBFF'
'more' => 1,
'parent' => 'tv_main_section_2_parent' | tv | fromJSON | join
'swiper' => 1
]
]}

{'!preTools' | snippet : [
'parents' => 'tv_main_section_3_parent' | tv | fromJSON | join ?: 9999999,
'prepareSnippet' => 'prepareSnippet',
'tplWrapper' => 'dsmc.msProducts.showcase.wrapper',
'tpl' => 'dsmc.msProducts.row',
'limit' => 8,
'wrapIfEmpty' => 0,
'optionFilters' => [
'taxonomy_product' => 'main'
] | json_encode
'rowPlaceholders' => [
'class' => 'swiper-slide'
],
'wrapperPlaceholders' => [
'class_section' => 'section py-5'
'color_section' => '#FAEBEB'
'title' => 'tv_main_section_3_parent' | dsmc_parent_name,
'more' => 1,
'parent' => 'tv_main_section_3_parent' | tv | fromJSON | join
'swiper' => 1
]
]}

<section class="action-section mt-0 mb-5">
    <div class="container">
        <div class="row d-flex flex-md-row flex-column-reverse">
            <div class="col-md-5 mb-md-0 p-md-4">
                {if $_modx->resource.section_top_link ?}
                <a href="{$_modx->resource.section_top_link | url}">
                    {/if}
                    <img src="{$_modx->resource.section_top_img}" class="img-fluid" alt="...">
                </a>
            </div>
            <div class="col-md-7 position-static p-4 pl-md-0" itemprop="mainContentOfPage">
                <h1 class="mt-0 h2 font-weight-bold">{$_modx->resource.section_top_title}</h1>
                <p>{$_modx->resource.section_top_intro}</p>
            </div>
        </div>
    </div>
</section>
<section class="catalog-section">
    <div class="catalog-section-head">
        <div class="container">
            <h2><span class="text-primary">Новинки</span> в каталоге</h2>
        </div>
    </div>

    <div class="container">

        <div class="row catalog_0718">


            {'!getCache' | snippet : [
            'element' => 'msProducts',
            'cacheKey' => 'main_showcase',
            'prepareSnippet' => 'prepareSnippet',
            'tpl'=> 'row.product.dsmc',
            'parents'=> 2,
            'limit' => 0,
            'sortdir' => 'DESC',
            'includeContent' => 0,
            'includeTVs' => 'price,sale,new,dropshiping',
            'tvFilters' => 'new==1'
            ]}
        </div>
    </div>
</section>

<section class="py-5 action-section">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-7 mb-md-0 p-md-4">
                <h2 class="mt-0 h2 font-weight-bold">{$_modx->resource.section_bottom_title}</h2>
                <p>{$_modx->resource.section_bottom_intro}</p>
            </div>
            <div class="col-md-5 position-static p-4 pl-md-0">
                {if $_modx->resource.section_bottom_link ?}
                <a href="{$_modx->resource.section_bottom_link | url}">
                    {/if}
                    <img src="{$_modx->resource.section_bottom_img}" class="img-fluid" alt="...">
                    {if $_modx->resource.section_bottom_link ?}
                </a>
                {/if}
            </div>
        </div>
    </div>
</section>

<section class="bg-light py-5 secrets_section">
    <div class="container">
        <h2>Наш простой секрет успеха:</h2>
        <div class="row secrets_ul_block">
            <div class="col-lg-8">

                <div class="row">
                    <div class="col-lg-6">
                        <ul class="list-unstyled secrets_ul">
                            <li>
                                <div class="icon"><img src="img/secret_icon1.png" alt="" /></div>
                                <p>На сайте вы найдете самые популярные товары из Китая, которые чаще всего интересуют пользователей социальных сетей. Сотрудники компании проводят мониторинг запросов покупателей, чтобы оперативно реагировать на потребности каждого.</p>
                            </li>
                            <li>
                                <div class="icon"><img src="img/secret_icon3.png" alt="" /></div>
                                <p>При необходимости<span> у нас есть</span> <a href="[[~76]]">услуга дропшиппинга</a>. То есть отправить товара с нашего склада конечному покупателю, фактически не имея его в наличии.</p>
                            </li>
                            <li>
                                <div class="icon"><img src="img/secret_icon5.png" alt="" /></div>
                                <p>Мы - прямой поставщик товаров из Китая оптом без посредников, контролируем <span><span>заказ </span></span>на всех этапах доставки<strong>. </strong></p>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <ul class="list-unstyled secrets_ul">
                            <li>
                                <div class="icon"><img src="img/secret_icon2.png" alt="" /></div>
                                <p>Пункты выдачи располагаются в Санкт-Петербурге, Москве, Екатеринбурге что ускоряет доставку по всей России</p>
                            </li>
                            <li>
                                <div class="icon"><img src="img/secret_icon4.png" alt="" /></div>
                                <p>Складские помещения просторные, теплые, отвечают все требованиям хранения вещей.</p>
                            </li>
                            <li>
                                <div class="icon"><img src="img/secret_icon6.png" alt="" /></div>
                                <p>В нашем интернет-магазине только популярная китайская продукция, которая быстро реализуется на привычном локальном рынке.</p>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            <div class="col-lg-4">{include 'wiget_vk'}</div>
        </div>
    </div>
</section>

<section class="py-5 catalog-section"  id="popular-catalog">
    <div class="catalog-section-head">
        <div class="container">
            <h2><span class="text-danger">Популярные</span> товары из Китая</h2>
        </div>
    </div>

    <div class="container">

        <div class="row catalog_0718">
            {'!getCache' | snippet : [
            'element' => 'msProducts',
            'cacheKey' => 'main_showcase',
            'prepareSnippet' => 'prepareSnippet',
            'tpl'=> 'row.product.dsmc',
            'parents'=> 2,
            'depth' => 5,
            'limit' => 8,
            'sortdir' => 'DESC',
            'includeContent' => 0,
            'includeTVs' => 'price,sale,new,dropshiping',
            'tvFilters' => 'popular_tv==1'
            ]}
        </div>
    </div>
</section>

{if $_modx->resource.res_main_cat != ''}
<div class="p-cat-section" id="p-cat-section">
    <div class="container">
        <h3>Популярные категории</h3>
        <div class="p-cat-block clearfix">

            {'!pdoResources' | snippet : [
            'parents' => 2,
            'resources' => $_modx->resource.res_main_cat,
            'includeTVs' => 'image,sale,new,min_price_category',
            'tvPrefix' => '',
            'tpl' => 'category.main.tpl',
            'limit' => 7,
            'depth' => 10,
            'where' => ['isfolder' => 1]
            ]
            }

        </div><!--/p-cat-block-->
    </div>
</div>
{/if}

<section class="bg-light py-5">
    <div class="container">
        <h2>Новости от Оптолидера</h2>
        <div class="row">
            {'!pdoResources' | snippet : [
            'tpl' => 'row.news.main.dsmc'
            'parents' => 843,
            'depth' => 0,
            'limit' => 3,
            'sortby' => 'createdon',
            'sortdir' => 'DESC',
            'includeTVs' => 'image,price,sale,new,dropshiping',
            'tvPrefix' => ''
            ]
            }
        </div>
    </div>
</section>

<section class="py-5">
    <div class="container">
        {include 'dsmc_delivery'}
    </div>
</section>

{/block}
