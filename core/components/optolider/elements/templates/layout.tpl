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

    <meta name="viewport" content="width=device-width">
    <meta name="Document-state" content="Dynamic"/>
    <meta name="Revizit-after" content="3 days"/>

    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/fonts/stylesheet.css">
    <link rel="stylesheet"
          href="{'assets_url' | option}components/optolider/dist/vendor/slick-carousel/slick/slick.css">
    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/vendor/swiper/css/swiper.min.css">
    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/css/style.default.min.css"
          id="theme-stylesheet">

    {*
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="css/themes.css">
    <link rel="stylesheet" href="css/custom.css?{filemtime($modx->getOption('base_path') ~ 'css/custom.css')}">
    <link rel="stylesheet"
          href="css/style_catalog.css?{filemtime($modx->getOption('base_path') ~ 'css/style_catalog.css')}">
    *}

    <link href="https://fonts.googleapis.com/css2?family=Russo+One&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0-11/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="img/favicon.png"/>

    <meta name='yandex-verification' content='6e3eed18d33c0024'/>
    <script src="https://vk.com/js/api/openapi.js?145"></script>
    <meta name="google-site-verification" content="e-57Un33NFS53Zyrc4NKauNPxoAd1f4HBJ7R1OAf_hw"/>
    <link rel="stylesheet"
          href="{'assets_url' | option}components/optolider/dist/vendor/@fancyapps/fancybox/jquery.fancybox.min.css"
          id="theme-stylesheet">
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
                        'tpl' => '@INLINE
                        <li {$classes}><a href="{$link}" class="nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>
                        ',
                        'parents' => 0,
                        'resources' => '1,73,76,229,12416,75,77,78',
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
<a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}" class="text-dark mr-2">{$_modx->config.phone}</a>
<p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Санкт-Петербург</p>
</span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
<a href="tel:{$_modx->config.phone_3 | preg_replace:'/[^0-9.+]|/': ''}"
   class="text-dark mr-2">{$_modx->config.phone_3}</a>
<p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Екатеринбург</p>
</span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
<a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9.+]|/': ''}"
   class="text-dark mr-2">{$_modx->config.phone_2}</a>
<p class="text-1 line-height-1 mb-0 header_top2row_phone_sub"> —  Москва</p>
</span>
                        <span class="d-none d-lg-flex justify-content-start align-items-center font-weight-semibold header_top2row_phone_number col-6">
<a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9.+]|/': ''}"
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

{block 'main'}
{/block}

<footer>
    <div class="footer_main bg-dark py-5 text-light footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-3">
                    {'!pdoMenu' | snippet : [
                    'tpl' => '@INLINE
                    <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}
                    </li>
                    ',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parents' => 0,
                    'resources' => '81,422,421,108,420,3,2429',
                    'showHidden' => 1,
                    'rowClass' => 'pl-0 nav-item'
                    'outerClass' => 'nav nav-link-lg nav-link-light flex-column',
                    'sortby' => '',
                    'sortdir' => 'ASC'
                    ]}
                </div>
                <div class="col-md-6 col-xl-3">
                    {'!pdoMenu' | snippet : [
                    'tpl' => '@INLINE
                    <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}
                    </li>
                    ',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parents' => 0,
                    'resources' => '117,746,2674,2425,367,1656,3509',
                    'showHidden' => 1,
                    'rowClass' => 'pl-0 nav-item'
                    'outerClass' => 'nav nav-link-lg nav-link-light flex-column',
                    'sortby' => '',
                    'sortdir' => 'ASC'
                    ]}
                </div>
                <div class="col-xl-3 my-5 my-xl-0">
                    <a href="50-xitov/" class="btn btn-warning mb-2">50 хитов</a>
                    <a href="novinki-nedeli/" class="btn btn-info mb-2">Последние поступления</a>
                    <a href="rasprodazha/" class="btn btn-danger mb-2">Распродажа</a>
                    <a href="1000-melochej/" class="btn btn-success mb-2">1000 мелочей</a>
                </div>
                <div class="col-xl-3">
                    {'!pdoMenu' | snippet : [
                    'tpl' => '@INLINE
                    <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}
                    </li>
                    ',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parents' => 0,
                    'resources' => '75,76,229,77',
                    'rowClass' => 'pl-0 nav-item'
                    'outerClass' => 'nav nav-link-light flex-column flex-md-row flex-xl-column'
                    'sortby' => ''
                    'sortdir' => 'ASC'
                    ]}
                </div>
            </div>
        </div>
    </div>
    <div class="footer_contacts bg-dark-1 text-light-1 py-5 footer-middle">
        <div class="container">
            <div class="row ml-3 ml-md-0">
                <div class="col-md-6 col-lg-3 d-flex icon-box mb-md-3 ml-0" itemprop="address" itemscope
                     itemtype="http://schema.org/PostalAddress">
                    <div class="icon-box-icon">
                        <i class="fas fa-map-marker-alt text-warning-1 mr-3"></i>
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2" itemprop="addressLocality">
				Санкт-Петербург
			</span>
                        <p class="mb-2" itemprop="streetAddress">Лиговский пр., д. 256, лит. В</p>
                        <p class="mb-0">
                            <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone}</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box mb-md-3 ml-0" itemprop="address" itemscope
                     itemtype="http://schema.org/PostalAddress">
                    <div class="icon-box-icon">
                        <i class="fas fa-map-marker-alt text-warning-1 mr-3"></i>
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white mb-2" itemprop="addressLocality">
				Москва
			</span>
                        <p class="mb-2" itemprop="streetAddress">Рязанский проспект 24, к. 1</p>
                        <p class="mb-0">
                            <a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9.+]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone_2}</a>
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box mb-md-3 ml-0">
                    <div class="icon-box-icon">
                        <i class="fas fa-map-marker-alt text-warning-1 mr-3"></i>
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2">

			Россия
			</span>
                        <p class="mb-2" itemprop="streetAddress">Оптолидер в регионах</p>
                        <p class="mb-0">
                            <a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9.+]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone_4}</a>
                        </p>
                    </div>

                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box mb-md-3 ml-0">
                    <div class="icon-box-icon">
                        <i class="far fa-envelope text-warning-1 mr-3"></i>
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2">
				Электронная почта
			</span>
                        <p class="mb-0" itemprop="email">
                            <a href="mailto:zakaz@optolider.ru">zakaz@optolider.ru</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer_main bg-dark py-5 text-light footer-top">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12 col-md-3 col-xl-2 px-5 px-md-0">
                    <a href="/" class="logo">
                        <img alt="EZY Website Template" class="img-fluid mb-3" src="img/logo_footer.png">
                    </a>
                </div>
                <div class="col-12 col-md-6 col-xl-4 px-5 px-md-0">
                    <span class="text-sm">© <span itemprop="name">ОптоЛидер</span></span>
                    <span class="text-sm d-block">Главный оптовый склад
                                Работаем с 2014 года</span>
                    <div class="mt-2">
                        <a href="{'1185' | url}" class="text-warning" rel="nofollow">Пользовательское соглашение</a>
                    </div>
                </div>
                <div class="col-12 col-md-3 col-xl-3 d-flex justify-content-center">
                    <ul class="list-inline d-lg-flex align-items-center my-4 my-xl-0 mr-5 mb-0">
                        <li class="list-inline-item mr-3 mr-md-1 mr-xl-3">
                            <a href="#" class="text-reset">
                                <div class="icon icon-shape rounded-circle text-white icon-vk">
                                    <i class="fab fa-vk text-lg"></i>
                                </div>
                            </a>
                        </li>
                        <li class="list-inline-item mr-3">
                            <a href="#" class="text-reset">
                                <div class="icon icon-shape icon-shape-secondary icon-youtube text-white rounded-circle">
                                    <i class="fab fa-youtube text-lg"></i>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-12 col-md-12 col-xl-3 d-flex justify-content-center justify-content-md-end">
                    <noindex>
                        <a href="http://dsmc.agency/" target="_blank" rel="nofollow">
                            <svg class="svg-icon-dsmc">
                                <use xlink:href="#icon-prod"></use>
                            </svg>
                        </a>
                    </noindex>
                </div>
            </div>
        </div>
    </div>
</footer>

<div class="share-button on-up">
    <a href="{'whatsapp' | option}" class="item">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </a>
    <a href="{'viber' | option}" class="item">
        <i class="fab fa-viber" aria-hidden="true"></i>
    </a>
    <a href="https://vk.com/im?sel=-85098905" class="item">
        <i class="fab fa-vk" aria-hidden="true"></i>
    </a>
    <div class="item open_share">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </div>
</div>

<div class="back-to-top on-up top d-flex">
    <i class="fas fa-angle-up"></i>
</div>

<div class="share-block-absolute">
    <!-- filter -->
    <svg>
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="8" result="shadow"/>
                <feOffset in="shadow" dx="0" dy="0" result="shadow"/>
                <feColorMatrix in="shadow" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7"
                               result="shadow2"/>
                <feBlend in="SourceGraphic" in2="shadow2"/>
            </filter>
        </defs>
    </svg>

    <!-- back-to-top -->

</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js"
        integrity="sha256-aaODHAgvwQW1bFOGXMeX+pC4PZIPsvn2h1sArYOhgXQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/themes.js"></script>

<script src="js/slick.min.js"></script>
<script src="js/custom.js?{filemtime($modx->getOption('base_path') ~ 'js/custom.js')}"></script>

{$_modx->config.statistics}
{$_modx->config.widget}

<script>
    function injectSvgSprite(path) {

        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function (e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }

    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('{'assets_url' | option}components/optolider/dist/icons/svg-sprite.svg');
</script>


<!-- Swiper Carousel -->
<script src="{'assets_url' | option}components/optolider/dist/vendor/swiper/js/swiper.min.js"></script>

<!-- Fancybox-->
<script src="{'assets_url' | option}components/optolider/dist/vendor/@fancyapps/fancybox/jquery.fancybox.min.js"></script>

<!-- Input Spinner -->
<script src="{'assets_url' | option}components/optolider/node_modules/bootstrap-input-spinner/src/bootstrap-input-spinner.js"></script>

{$_modx->regClientScript('assets_url' | option ~ 'components/optolider/dist/js/theme.js')}
</body>
</html>