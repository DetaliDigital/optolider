{extends 'template:Базовый шаблон'}
{block 'main'}

    <div class="main my-4">
        <div class="container">

            {include 'dsmc_crumbs'}

                {if $_modx->resource.longtitle}
                    <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.longtitle}</h1>
                {/if}

                {'!pdoLiterResources' | snippet : [
                'tpl' => 'dsmc.pdoLiterResources.row'
                ]}

            <p class="news_text"><div itemprop="mainContentOfPage">{'content' | resource}</div></p>

        </div>
    </div>

{/block}