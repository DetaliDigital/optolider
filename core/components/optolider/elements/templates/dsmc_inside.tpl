{extends 'template:Базовый шаблон'}
{block 'main'}

<div class="main my-4 inside">
    <div class="container">

        {include 'dsmc_crumbs'}
        {if $_modx->resource.longtitle}
        <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.longtitle}</h1>
        {/if}

        {if 'id' | resource == 14130}
            {'!pdoLiterResources' | snippet : [
                'tpl' => 'dsmc.pdoLiterResources.row'
            ]}
        {/if}

        <p class="news_text"><div itemprop="mainContentOfPage">{'content' | resource}</div></p>

    </div>
</div>

{/block}