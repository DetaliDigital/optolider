{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4 inside">
    <div class="container">

        {include 'dsmc_crumbs'}
        <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.longtitle}</h1>
    </div>
    <p class="news_text"><div itemprop="mainContentOfPage">{'content' | resouece</div></p>


</div>

{include 'dsmc_footer'}
{include 'dsmc_script'}
</body>
</html>