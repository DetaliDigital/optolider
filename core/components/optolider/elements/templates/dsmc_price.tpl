{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">

        {include 'dsmc_crumbs'}
        {if 'longtitle' | resource ?}
            <h1 class="text-uppercase font-weight-bold mb-4">{'longtitle' | resource}</h1>
        {/if}
        <div itemprop="mainContentOfPage">
            <div class="row">
                <div class="col-lg-9">

                    {set $rows = 'download_price' | tv | fromJSON}

                    <ul class="list list-inline row py-5 border-bottom">
                        {foreach $rows as $row}
                        <li class="list-inline-item col-lg-6 mr-0">
                            <a href="{$row.id_export | dsmc_msie_token ?: $row.price}" class="btn btn-link text-dark">
                                <i class="fas fa-file-excel mr-2 text-success"></i>{$row.name}</a>

                        </li>
                        {/foreach}
                    </ul>

                    <div class="py-5 small">
                        {'content' | resource}
                    </div>

                </div>
                <div class="col-lg-3">
                    <div class="border bg-success border-light py-5 px-3">
                        <div class="lead-title d-flex py-5 flex-column justify-content-center text-center align-items-center h-100">
                            <img class="img-check" src="assets/img/check.png">
                            <p class="h4 text-white mt-4 display-3">Звоните!</p>
                            <p class="text-white text-sm">мы рассмотрим вашу заявку и предложим оптимальные условия</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

{include 'dsmc_footer'}
{include 'dsmc_script'}
</body>
</html>