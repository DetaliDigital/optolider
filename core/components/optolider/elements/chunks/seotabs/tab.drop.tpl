{set $saleprice = 'saleprice' | placeholder}

<div class="p-0 mb-5">
    <div class="row mx-0">
        <div class="col-lg-9 card p-3 p-lg-5 border border-light">
            <h2>{'pagetitle' | resource}</h2>

            {if 'min_count' | resource == 1}
            <div class="form-group align-items-center">
                <label class="col-form-label small text-light">Цена по дропшиппингу:</label>
                <div class="h5 font-weight-bold" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer"><meta itemprop="priceCurrency" content="RUB">
                    <span class="font-weight-bold"><span itemprop="price">{$saleprice.1.price | number : 0 : '.' : ' '}</span> {'ms2_frontend_currency' | lexicon}</span>
                </div>
            </div>
            {/if}

            <hr>
            <div class="row">
                <div class="col-12 col-lg-4 mb-3 mb-lg-0 mt-3">
                    <div class="card border-0">
                        <div class="card-body d-flex align-items-top p-0">
                            <i class="fas fa-percent mr-4 text-light"></i>
                            <div class="cart-body-text">
                                <p>Наша комиссия по дропшиппингу</p>
                                <p class="price text-success font-weight-bold">200 рублей за заказ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4 mb-3 mb-lg-0 mt-3">
                    <div class="card border-0">
                        <div class="card-body d-flex align-items-top p-0">
                            <i class="fas fa-truck mr-4 text-light"></i>
                            <div class="cart-body-text">
                                <p>Ваша переплата за услуги доставки товара</p>
                                <p class="price text-success font-weight-bold">0 рублей</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="card border-0">
                        <div class="card-body d-flex align-items-top p-0 mt-3">
                            <i class="fas fa-piggy-bank mr-4 text-light"></i>
                            <div class="cart-body-text">
                                <p>Ваши затраты на содержание склада</p>
                                <p class="price text-success font-weight-bold">0 рублей</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="alert d-flex mx-0 px-0">
                <i class="fas fa-exclamation-circle text-warning mr-3 mt-2"></i>
                Если за месяц вы продали более 100 единиц по одноименному товару, то мы делаем перерасчет по
                этим заказам по соотвествующей цене, в данном случае цена как от 100 штук и разницу переводим
                вам на счет
            </div>

        </div>
        <div class="col-lg-3 card p-3 p-lg-5 border bg-success border-light">
            <div class="lead-title d-flex flex-column justify-content-center text-center align-items-center h-100">
                <img class="img-check" src="assets/img/check.png">
                <p class="h4 text-white mt-4 display-3">Звоните!</p>
                <p class="text-white">мы рассмотрим вашу заявку и предложим оптимальные условия</p>
            </div>
        </div>
    </div>
</div>
<div class="bg-light p-3 p-lg-5">
    <div class="ship">
        <h2 class="text-center">Что такое <span class="text-success">дропшиппинг</span></h2>
    </div>
    <p>Это способ реализации товаров, заключающийся в отправке товаров с нашего склада конечному покупателю, без вложений в закупку. То есть вы продаете товар, фактически не имея его в наличии, тем самым экономя на закупке и вкладывая больше средств в маркетинг. А также вы снимаете с себя заботу о закупках, обеспечении ассортимента, хранении и доставке товара до вашего покупателя. За все это отвечает интернет магазин дропшиппинг товаров - ОптоЛидер. </p>
    <div class="bd-callout bd-callout-warning bg-white text-success text-uppercase font-weight-bold">Наша комиссия не увеличивается в зависимости от количества товаров в корзине, она может быть только снижена по результатам нашей с вами работы.</div>
    <p>Наша услуга будет выгодна как для новичков, кто только пытается найти свою нишу, так и для крупных интернет магазинов с широким ассортиментом. Наша команда заинтересована в долгосрочном и взаимовыгодном сотрудничестве!</p>
    <div class="product">
        <div class="row card-group my-5">
            <div class="col-lg-4 card p-3 p-lg-5 border border-light">
                <img class="img-fluid card-img" src="{'image' | resource}">
                <div class="card-img-overlay card-product-custom d-flex flex-column justify-content-end">
                    <h5 class="card-title">{'pagetitle' | resource} <br> по дропшипингу:</h5>
                    <p class="card-text"><span class="text-warning">Быстрый старт</span> бизнеса без вложений!</p>
                </div>
            </div>
            <div class="col-lg-8 card p-3 p-lg-5 bg-light">
                <p><b>{'pagetitle' | resource}</b> — это товар, который поставляется нами из Китая без посредников. Это делает наши цены необычайно низкими, а условия работы по дропшиппингу и вовсе самыми выгодными в России. Не сомневайтесь в заказе, в нашем интернет-магазине собраны только популярные товары с быстрой реализацией.</p>

                <p>Все, что вам необходимо — это сделать заказ на сайте и сообщить позвонившему менеджеру о желании работать на наших условиях. Также вы можете сами связаться с нашим менеджером по дропшиппингу. Он проконсультирует вас, ответит на интересующие вопросы, поможет быстро оформить заказ. Продавайте больше и получайте более выгодные условия!</p>
            </div>
        </div>
    </div>
</div>

<div class="who">
    <div class="row card-group mx-0 my-5">
        <div class="col-lg-6 card p-3 p-lg-5 border border-light">
            <div class="manager">
                <p class="h3">Наш менеджер по дропшиппингу:</p>
                <div class="name h1 text-success text-uppercase font-weight-bold">Максим Киселев</div>
                <hr>
                <ul class="mt-5 list-group list-contact">
                    {if 'tab_phone' | option ?}
                    <li><i class="fas fa-phone-alt box-icon mr-2"></i>{'tab_phone' | option}</li>
                    {/if}
                    {if 'tab_mail' | option ?}
                    <li><i class="far fa-envelope-open box-icon mr-2"></i>{'tab_mail' | option}</a></li>
                    {/if}
                    {if 'tab_social' | option ?}
                    <li><i class="fab fa-vk box-icon mr-2"></i><a href="{'tab_social' | option}">{'tab_social' | option}</a></li>
                    {/if}
                    {if 'tab_time' | option ?}
                    <li><i class="far fa-clock box-icon mr-2"></i>{'tab_time' | option}</li>
                    {/if}
                </ul>
            </div>
        </div>
        <div class="col-lg-6 card p-3 p-lg-5 border-0 bg-light">
            <h2>{'pagetitle' | resource}</h2>
            <p>Она подходит абсолютно для всех: сайтов одностраничников, интернет-магазинов, всей оффлайн торговли! Мы работаем с первого заказа. Мы не требуем денежных холдов (внесения суммы на счет), у нас нет минимального количества закупок в неделю, нет никаких ограничений!<br><br>Для начала работы нужно обсудить с менеджером, по каким товарам планируете работать, чтобы мы сделали бронь на складе и обеспечили наличие. Есть заказ на товар? Звоните, пишите и передавайте данные для отправки. Наши менеджеры ответят на все Ваши вопросы, а также помогут в выборе наиболее популярные товаров, опираясь на свой опыт и текущие тренды.</p>
        </div>
    </div>
</div>