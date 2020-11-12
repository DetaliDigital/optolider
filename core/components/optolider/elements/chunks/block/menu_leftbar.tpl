<div class="sidebar-menu-dropdown {if $_modx->resource.id == 1}home{/if}">
    <div id="cat" class="cat-dropdown">
        <div class="sidebar-contant">
            <div id="menu" class="navbar-collapse collapse">
                <div class="menu-slide-1">
                    <div class="header-search d-xl-none bg-success-2 py-3">
                        <div class="container">
                            {'!mSearchForm' | snippet : [
                            'fields' => 'pagetitle:3',
                            'element'=> 'msProducts',
                            'includeTVs'=> 'image,file',
                            'tplForm'=> 'tpl.mSearch2.form.dsmc',
                            'tpl'=> 'tpl.mSearch2.ac.dsmc',
                            'minQuery'=> 2,
                            'limit'=> 7
                            ]}
                        </div>
                    </div>
                    <div class="header-bar-menu py-4 d-xl-none">
                        <div class="container menu-block-btn">
                            <a href="novinki-nedeli/" class="btn d-xl-none mb-3 btn-block btn-lg text-uppercase text-dark font-weight-semibold btn-catalog btn-warning btn-slide-1">Каталог</a>
                            <a href="novinki-nedeli/" class="btn btn-primary label-button d-xl-none my-1 btn-block text-white">Новинки<span class="badge badge-secondary ml-2">New</span></a>
                            <a href="50-xitov/" class="btn btn-danger label-button d-xl-none my-1 btn-block text-white">50 хитов недели<span class="badge badge-secondary ml-2">Хит</span></a>
                            <a href="tovari-dlya-odnostranichnikov/" class="btn btn-success label-button d-xl-none my-1 btn-block text-white">Одностраничники</a>
                        </div>
                        <div class="container">
                            {'pdoMenu' | snippet : [
                            'parents' => 0,
                            'resources' => '73,76,229,75,77,78',
                            'firstClass' => '',
                            'lastClass' => '',
                            'outerClass' => 'mobile_menu'
                            ]
                            }

                            <div class="form-group align-items-center border-top">
                                <label class="col-form-label small text-white my-2">Социальные сети</label>
                                <ul class="header-top-social-icons social-icons social-icons-transparent">
                                    <li class="social-icons-vk icon-box-icon">
                                        <a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-vk"></i></a>
                                    </li>
                                    <li class="social-icons-facebook icon-box-icon">
                                        <a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                                    </li>
                                    <li class="social-icons-twitter icon-box-icon">
                                        <a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
                                    </li>
                                    <li class="social-icons-instagram icon-box-icon">
                                        <a href="http://www.instagram.com/" target="_blank" title="Instragram"><i class="fab fa-instagram"></i></a>
                                    </li>
                                    <li class="social-icons-youtube icon-box-icon">
                                        <a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fab fa-youtube"></i></a>
                                    </li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>


                {'!getCache' | snippet : [
                'element' => 'pdoMenu'
                'cacheKey' => 'getMenu'
                'parents' =>  2,
                'level' => 2,
                'firstClass' => '',
                'innerClass' => ''
                'where' => ['isfolder' => 1]
                'lastClass' => '',
                'includeTVs' => 'icon_menu'
                'tvPrefix' => ''
                'tplParentRow' => 'left.tplParentRow'
                'tpl' => 'left.tplRow'
                'parentClass' => 'menu-item menu-item-has-children animate-dropdown dropdown'
                'innerClass' => 'dropdown-menu',
                'rowClass' => 'level sub-megamenu',
                'outerClass' => 'nav navbar-nav',
                'tplOuter' => 'level1.tplOuter'
                ]}
                <div class="menu-outer"></div>
            </div>
        </div>
    </div>
</div>