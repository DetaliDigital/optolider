{extends 'template:Базовый шаблон'}
{block 'main'}

<div class="main my-4 inside">
    <div class="container">

        {include 'dsmc_crumbs'}
        {if $_modx->resource.longtitle}
        <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.longtitle}</h1>
        {/if}
        <p class="news_text"><div itemprop="mainContentOfPage">{'content' | resource}</div></p>

    </div>
</div>

{/block}