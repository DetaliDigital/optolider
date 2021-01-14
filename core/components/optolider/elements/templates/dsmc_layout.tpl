<!doctype html>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <base href="{$_modx->config.site_url}">

    {if 'template' | resource == 45 || 'template' | resource == 8}
        <title>{'st.title' | placeholder}</title>
        <meta name="description" content="{'st.description' | placeholder}"/>
    {else}
        {if $_modx->resource.title != ''}
            <title>{$_modx->resource.title}</title>
        {else}
            <title>{$_pls['dsmc_title']}</title>
        {/if}
        {if $_modx->resource.desc != ''}
            <meta name="description" content="{$_modx->resource.desc}"/>
        {else}
            <meta name="description" content="{$_pls['dsmc_description']}"/>
        {/if}
    {/if}
    <link rel="stylesheet"
          href="{'assets_url' | option}components/optolider/dist/vendor/@fancyapps/fancybox/jquery.fancybox.min.css"
    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/css/style.default.css">

    <meta name="viewport" conte nt="width=device-width">
    <meta name="Document-state" content="Dynamic"/>
    <meta name="Revizit-after" content="3 days"/>

    <link rel="icon" type="image/png" href="img/favicon.png"/>
    <meta name='yandex-verification' content='6e3eed18d33c0024'/>
    <script src="https://vk.com/js/api/openapi.js?145"></script>
    <meta name="google-site-verification" content="e-57Un33NFS53Zyrc4NKauNPxoAd1f4HBJ7R1OAf_hw"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.0/css/all.css">
    <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">

    {$_modx->config.analytics}

</head>

<body class="{if $_modx->resource.id == 1}homepage{/if}{if $_modx->resource.template == 8}cartpage{/if}" itemscope
      itemtype="http://schema.org/WebPage">


<header id="header" class="header_1217">
    <div class="header-body">
        <div class="header-top d-none d-lg-block">
            <div class="header-top-container container">
                <div class="header-row">
                    <div class="header-column justify-content-start">

                        {'!getCache' | snippet : [
                        'element' => 'pdoMenu'
                        'cacheKey' => 'getMenu'
                        'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
                        'parents' => 0,
                        'resources' => '1,73,76,229,75,77,78',
                        'firstClass' => '',
                        'lastClass' => '',
                        'rowClass' => 'nav-item'
                        'outerClass' => 'nav header_toprow_links'
                        'sortby' => ''
                        ]}
                    </div>
                    <div class="header-column justify-content-end">
                        <ul class="header-top-social-icons social-icons social-icons-transparent d-none d-lg-block">
                            <li class="social-icons-vk icon-box-icon">
                                <a href="https://vk.com/opt_dropshipping" target="_blank" title="Vkontakte"><i
                                            class="fab fa-vk"></i></a>
                            </li>
                            <li class="social-icons-youtube icon-box-icon">
                                <a href="https://www.youtube.com/channel/UCKN6TqScAyImz7nwh78zFzQ/featured"
                                   target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle bg-warning">
            <div class="header-container container">
                <div class="header-row">
                    <div class="header-column justify-content-start">
                        <div class="header-logo header_top2row_logo d-flex">
                            <button id='menu-toggle' data-target=".navbar-collapse" data-toggle="collapse1"
                                    class="navbar-toggle menu-toggle d-xl-none d-block" type="button"><i
                                        class="fas fa-bars"></i>
                            </button>
                            <a href="{$_modx->config.base_href}" class="d-none d-lg-block">
                                <img alt="EZ" class="img-logo" src="{$_modx->config.logo_header}">
                                <span>Главный оптовый склад</span>
                            </a>

                            <a href="{$_modx->config.base_href}" class="d-block d-lg-none">
                                <img alt="EZ" class="img-logo" src="{$_modx->config.logo_header_m}">
                            </a>

                        </div>
                    </div>
                    <div class="header-column justify-content-start header_top2row_phone d-none d-lg-flex header-geolocation row">
                            <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
                            <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/': ''}"
                               class="text-dark mr-2">{$_modx->config.phone}</a>
                            <p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Санкт-Петербург</p>
                            </span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
                            <a href="tel:{$_modx->config.phone_3 | preg_replace:'/[^0-9]|/': ''}"
                               class="text-dark mr-2">{$_modx->config.phone_3}</a>
                            <p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Екатеринбург</p>
                            </span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
                            <a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9]|/': ''}"
                               class="text-dark mr-2">{$_modx->config.phone_2}</a>
                            <p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Москва</p>
                            </span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
                            <a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9]|/': ''}"
                               class="text-dark mr-2">{$_modx->config.phone_4}</a>
                            <p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Россия</p>
                            </span>
                    </div>

                    {'!msMiniCart' | snippet : [
                    'tpl' => 'tpl.msMiniCart.dsmc.v2'
                    ]}
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="header-search bg-success py-3">
        <div class="container">
            {'!mSearchForm' | snippet : [
            'fields' => 'pagetitle:3',
            'element'=> 'msProducts',
            'tplForm'=> 'tpl.mSearch2.form.dsmc',
            'tpl'=> 'tpl.mSearch2.ac.dsmc',
            'minQuery'=> 2,
            'limit'=> 7,
            'pageId' => 79
            ]}
        </div>
    </div>
    <div class="header-bottom-bar bg-success-1 d-hidden d-lg-block">
        <div class="container">
            <div class="header-bottom-row d-flex">
                <div class="header-column box-catalog">
                    <span href="{$_modx->makeUrl(2)}" class="btn btn-success btn-lg btn-catalog-header btn-square "><i
                                class="fas fa-bars mr-3"></i>Каталог</span>

                    {if $_modx->resource.id != 1}
                        {include 'menu_leftbar'}
                    {/if}
                </div>

                <div class="header-column ml-3 d-none d-lg-flex">
                    <a href="novinki-nedeli/" class="btn btn-primary label-button">Новинки<span
                                class="badge badge-secondary ml-2">New</span></a>
                    <a href="50-xitov/" class="btn btn-danger label-button">50 хитов<span
                                class="badge badge-secondary ml-2">Хит</span></a>
                    <a href="rasprodazha/" class="btn btn-danger-1 label-button">Распродажа<span
                                class="badge badge-secondary ml-2">Sale</span></span></a>
                </div>

                <div class="header-column d-none d-lg-flex">
                    <ul class="nav header-links">
                        <li class="nav-item">
                            <a href="1000-melochej/" class="nav-link text-white" href="tovaryi-dlya-telemagazina/">1000
                                мелочей</a>
                        </li>
                        <li class="nav-item">
                            <a href="tovari-dlya-odnostranichnikov/" class="nav-link text-white"
                               href="tovari-dlya-odnostranichnikov/">Одностраничникам</a>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    </div>
</header>

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
    </div>
    {if $_modx->resource.longtitle}
        <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.longtitle}</h1>
    {/if}
    <p class="news_text">
    <div itemprop="mainContentOfPage">[[*content]]</div>
    </p>

</div>

{include 'dsmc_footer'}
{include 'dsmc_script'}



</body>
</html>