<footer itemscope itemtype="http://schema.org/Organization">
    <div class="footer_main bg-dark py-5 text-light footer-top">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 col-md-6 pt-lg-2 text-center text-md-left">
                    <div class="text-1 h6 mb-3 text-uppercase text-warning-1">Каталог:</div>
                    {'!getCache' | snippet : [
                    'element' => 'pdoMenu'
                    'cacheKey' => 'getMenu'
                    'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="text-light-1" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parents' => 0,
                    'resources' => '81,422,421,108,420,3,2429,117,746,2674,2425,367,1656,3509',
                    'showHidden' => 1,
                    'rowClass' => 'col-lg-6 pl-0'
                    'outerClass' => 'list list-unstyled d-flex flex-wrap'
                    'sortby' => ''
                    'sortdir' => 'ASC'
                    ]}
                </div>
                <div class="col-lg-3 col-md-6 pt-lg-2 text-center text-md-left">
                    <div class="text-1 h6 mb-3 text-uppercase text-warning-1">Компания:</div>
                    {'!getCache' | snippet : [
                    'element' => 'pdoMenu'
                    'cacheKey' => 'getMenu'
                    'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="text-light-1" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
                    'firstClass' => '',
                    'lastClass' => '',
                    'parents' => 0,
                    'resources' => '75,76,229,77',
                    'rowClass' => 'pl-0 col-12'
                    'outerClass' => 'list list-unstyled d-flex flex-wrap'
                    'sortby' => ''
                    'sortdir' => 'ASC'
                    ]}
                </div>
                <div class="col-lg-2 col-md-12 mb-4 mb-md-0 text-center text-lg-left text-center">
                    <a href="index.html" class="logo">
                        <img alt="EZY Website Template" class="img-fluid mb-3" src="img/logo_footer.png">
                    </a>
                    <p class="footer_opto_copy">© <span itemprop="name">ОптоЛидер</span>
                        Главный оптовый склад
                        Работаем с 2014 года</p>

                    <div><a href="{'1185' | url}" class="text-warning" rel="nofollow">Пользовательское соглашение</a>
                    </div>

                </div>


            </div>
        </div>
    </div>
    <div class="footer_contacts bg-dark-1 text-light-1 py-5 footer-middle">
        <div class="container">
            <div class="row ml-3 ml-md-0">
                <div class="col-md-6 col-lg-3 d-flex icon-box" itemprop="address" itemscope
                     itemtype="http://schema.org/PostalAddress">
                    <div class="icon-box-icon">
                        <i class="fas fa-map-marker-alt text-warning-1 mr-3"></i>
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2" itemprop="addressLocality">
				Санкт-Петербург
			</span>
                        <p class="mb-0" itemprop="streetAddress">Лиговский пр., д. 256, лит. В</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box" itemprop="address" itemscope
                     itemtype="http://schema.org/PostalAddress">
                    <div class="icon-box-icon">
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white mb-2" itemprop="addressLocality">
				Москва
			</span>
                        <p class="" itemprop="streetAddress">Рязанский проспект 24, к. 1</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box ">
                    <div class="icon-box-icon">
                    </div>
                    <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2">

			Телефоны
			</span>
                        <p class="mb-1">
                            <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone}</a>
                        </p>
                        <p class="mb-1">
                            <a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone_2}</a>
                        </p>
                        <p class="mb-1">
                            <a href="tel:{$_modx->config.phone_3 | preg_replace:'/[^0-9]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone_3}</a>
                        </p>
                        <p class="mb-0">
                            <a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9]|/': ''}"
                               itemprop="telephone">{$_modx->config.phone_4}</a>
                        </p>
                    </div>

                </div>
                <div class="col-md-6 col-lg-3 d-flex icon-box ">
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
    <div class="footer_copy bg-dark-2 text-light-2 py-3 footer-bottom">
        <div class="container">
            <div class="row text-center text-md-left align-items-center my-3 my-md-0">
                <div class="col-md-7 col-lg-8 social-labels">
                    <span>Мы в —</span>
                    <noindex><a href="https://vk.com/opt_dropshipping" target="_blank" class="footer_social_vk"
                                rel="nofollow">Вконтакте</a><a
                                href="https://www.youtube.com/channel/UCKN6TqScAyImz7nwh78zFzQ" target="_blank"
                                class="footer_social_yt" rel="nofollow">Youtube</a>
                    </noindex>
                </div>
                <div class="col-md-5 col-lg-4 text-md-right footer_credits mt-3 mt-md-0">
                    <span>Сопровождение сайта — </span>
                    <noindex>
                        <a href="http://dsmc.agency/" target="_blank" rel="nofollow"><img
                                    src="https://optolider.ru/img/mark_footer.png" alt="Сопровождение сайта — DSMC"></a>
                    </noindex>
                </div>
            </div>
        </div>
    </div>
</footer>

    <footer>
        <div class="footer_main bg-dark py-5 text-light footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3">
                        {'!pdoMenu' | snippet : [
                        'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
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
                    <div class="col-xl-3">
                        {'!pdoMenu' | snippet : [
                        'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
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
                    <div class="col-xl-3">
                        <a href="" class="btn btn-warning mb-2">50 хитов</a>
                        <a href="" class="btn btn-info mb-2">Последние поступление</a>
                        <a href="" class="btn btn-danger mb-2">Распродажа</a>
                        <a href="" class="btn btn-success mb-2">1000 мелочей</a>
                    </div>
                    <div class="col-xl-3">
                        {'!pdoMenu' | snippet : [
                        'tpl' => '@INLINE <li {$classes}><a href="{$link}" class="text-light-1 nav-link" {$attributes}>{$menutitle}</a>{$wrapper}</li>',
                        'firstClass' => '',
                        'lastClass' => '',
                        'parents' => 0,
                        'resources' => '75,76,229,77',
                        'rowClass' => 'pl-0 nav-item'
                        'outerClass' => 'nav nav-link-light flex-column'
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
                    <div class="col-md-6 col-lg-3 d-flex icon-box" itemprop="address" itemscope
                         itemtype="http://schema.org/PostalAddress">
                        <div class="icon-box-icon">
                            <i class="fas fa-map-marker-alt text-warning-1 mr-3"></i>
                        </div>
                        <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2" itemprop="addressLocality">
				Санкт-Петербург
			</span>
                            <p class="mb-3" itemprop="streetAddress">Лиговский пр., д. 256, лит. В</p>
                            <p class="mb-0">
                                <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/.+': ''}"
                                   itemprop="telephone">{$_modx->config.phone}</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex icon-box" itemprop="address" itemscope
                         itemtype="http://schema.org/PostalAddress">
                        <div class="icon-box-icon">
                        </div>
                        <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white mb-2" itemprop="addressLocality">
				Москва
			</span>
                            <p class="mb-3" itemprop="streetAddress">Рязанский проспект 24, к. 1</p>
                            <p class="mb-0">
                                <a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9]|/': ''}"
                                   itemprop="telephone">{$_modx->config.phone_2}</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3 d-flex icon-box ">
                        <div class="icon-box-icon">
                        </div>
                        <div class="icon-box-info">
			<span class="d-flex h6 text-uppercase text-white pl-0 mb-2">

			Россия
			</span>
                            <p class="mb-3" itemprop="streetAddress">Оптолидер в регионах</p>
                            <p class="mb-0">
                                <a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9]|/': ''}"
                                   itemprop="telephone">{$_modx->config.phone_4}</a>
                            </p>
                        </div>

                    </div>
                    <div class="col-md-6 col-lg-3 d-flex icon-box ">
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
                <div class="row">
                    <div class="col-xl-2">
                        <a href="index.html" class="logo">
                            <img alt="EZY Website Template" class="img-fluid mb-3" src="img/logo_footer.png">
                        </a>
                    </div>
                    <div class="col-xl-4">
                        <span class="text-sm">© <span itemprop="name">ОптоЛидер</span></span>
                            <span class="text-sm d-block">Главный оптовый склад
                                Работаем с 2014 года</span>
                        <div class="mt-2">
                            <a href="{'1185' | url}" class="text-warning" rel="nofollow">Пользовательское соглашение</a>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <ul class="header-top-social-icons social-icons social-icons-transparent d-none d-lg-block">
                            <li class="social-icons-vk icon-box-icon">
                                <a href="https://vk.com/opt_dropshipping" target="_blank" title="Vkontakte"><i class="fab fa-vk"></i></a>
                            </li>
                            <li class="social-icons-youtube icon-box-icon">
                                <a href="https://www.youtube.com/channel/UCKN6TqScAyImz7nwh78zFzQ/featured" target="_blank" title="Youtube"><i class="fab fa-youtube"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-xl-3">
                        <span>Сопровождение сайта — </span>
                        <noindex>
                            <a href="http://dsmc.agency/" target="_blank" rel="nofollow"><img
                                        src="https://optolider.ru/img/mark_footer.png" alt="Сопровождение сайта — DSMC"></a>
                        </noindex>
                    </div>
                </div>
            </div>
        </div>
    </footer>