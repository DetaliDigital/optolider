<footer>
    <div class="footer_main bg-dark py-5 text-light footer-top">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-xl-3">
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
                <div class="col-md-6 col-xl-3">
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
                <div class="col-xl-3 my-5 my-xl-0">
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
                            <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/.+': ''}"
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
                            <a href="tel:{$_modx->config.phone_2 | preg_replace:'/[^0-9]|/': ''}"
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
                            <a href="tel:{$_modx->config.phone_4 | preg_replace:'/[^0-9]|/': ''}"
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