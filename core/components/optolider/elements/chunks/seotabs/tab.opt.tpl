{set $saleprice = 'saleprice' | placeholder}

{* Исключаем из массива 1шт *}

{if 'min_count' | resource != 1}
{unset $saleprice.1}
{/if}

<div class="row">
    <div class="col-12 col-lg-3">

        <div class="list-cart-price price-white">
            <li class="list-group-item  d-flex justify-content-between align-items-center text-light">
                Объем
                <span>Цена за шт</span>
            </li>
            {foreach $saleprice as $item}
            {if $item.price != 0}
            <li class="list-group-item d-flex justify-content-between align-items-center text-success ">
                от {$item.count} {'ms2_frontend_count_unit' | lexicon}
                <span class="font-weight-bold text-dark">{$item.price} {'ms2_frontend_currency' | lexicon}</span>
            </li>
            {/if}
            {/foreach}
        </div>
    </div>
    <div class="col-12 col-lg-9">
        <h2 class="mt-lg-0 mt-5">{'pagetitle' | resource} оптом</h2>
        <div class="sale-block mb-2">
            <span class="text-success">Цена от:</span><span class="font-weight-bold">
                {foreach $saleprice as $item first=$first}
                {if $first }
                {$item.price | number : 0 : '.' : ' '} {'ms2_frontend_currency' | lexicon}
                {/if}
                {/foreach}
            </span>
        </div>
        <p>
            Набор мыльных роз с плюшевыми мишками всегда в наличии на наших складах в Санкт-Петербурге и Москве, что обеспечивает быструю отгрузку и доставку во все регионы России. Кроме того, мы предлагаем уникальные условия для организаторов совместных покупок. Мы ценим каждого клиента и предлагаем благоприятные условия для долгосрочного сотрудничества. Заказывайте больше, получайте цены еще ниже!
        </p>
    </div>
</div>
<div class="who">
    <div class="row card-group my-5">
        <div class="col-lg-6 card p-3 p-lg-5 border-0 bg-light">
            <h2>Для кого подходит схема работы оптом</h2>
            <p>Она подходит абсолютно для всех: сайтов одностраничников, интернет-магазинов, всей оффлайн торговли! Мы работаем с первого заказа. Мы не требуем денежных холдов (внесения суммы на счет), у нас нет минимального количества закупок в неделю, нет никаких ограничений!<br><br>Для начала работы нужно обсудить с менеджером, по каким товарам планируете работать, чтобы мы сделали бронь на складе и обеспечили наличие. Есть заказ на товар? Звоните, пишите и передавайте данные для отправки. Наши менеджеры ответят на все Ваши вопросы, а также помогут в выборе наиболее популярные товаров, опираясь на свой опыт и текущие тренды.</p>
        </div>
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
    </div>
</div>

<h2>Семь причин работать с нами:</h2>
<ol class="list-box">
    <li>мы гарантируем низкие оптовые цены;</li>
    <li>вам не придется искать продукцию по низким ценам, ведь у нас самый низкий прайс;</li>
    <li>можно обменять не подошедшую покупку на другую или вернуть деньги;</li>
    <li>вся продукция высокого качества, независимо от вида, назначения и даже стоимости;</li>
    <li>наличие товаров на складе, что дает возможность быстрой доставки в конкретный момент;</li>
    <li>вам не придется искать товар: заказываете, мы мгновенно привозим;</li>
    <li>нет никаких дополнительных условий для сотрудничества, что делает возможность начать работу с нами прямо сейчас.</li>
</ol>
<div class="section-advantage my-5">
    <h2>Мы не обещаем, а работаем на:</h2>
    <div class="row">
        <div class="col-12 col-lg-4 mb-3 mb-lg-0">
            <div class="card border-0 bg-light">
                <div class="card-body d-flex align-items-center">
                    <i class="fas fa-star mr-4"></i>
                    Достижение эффективного результат
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-4 mb-3 mb-lg-0">
            <div class="card border-0 bg-light">
                <div class="card-body d-flex align-items-center">
                    <i class="far fa-file-alt mr-4"></i>
                    Предоставление максимально выгодных условий
                </div>
            </div>
        </div>
        <div class="col-12 col-lg-4">
            <div class="card border-0 bg-light">
                <div class="card-body d-flex align-items-center">
                    <i class="fas fa-store mr-4"></i>
                    Предоставление максимально выгодных условий
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section-about my-5">
    <div class="row">
        <div class="col-md-8 mx-auto d-flex align-items-center flex-column flex-lg-row">
            <div class="mr-3 mb-5 mb-lg-0">
                <img src="assets/img/tababouts.jpg">
            </div>
            <div><h2>Не ищите условий лучше!</h2>
                <p>Вы их просто не найдете. Мы надежны, стабильны и ответсвенны.
                    Позвоните и станьте нашим постоянным партнером</p><div>
                </div>
            </div>
        </div>
    </div>
</div>