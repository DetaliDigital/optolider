{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="h2 text-uppercase font-weight-bold mb-4">{$_modx->resource.pagetitle}</h1>

        {'!msCart' | snippet : [
        'tpl' => 'tpl.msCart.dsmc'
        ]}
        {'!msOrder' | snippet : [
        'tpl' => 'dsmc.tpl.msOrder'
        ]}

    </div>
</div>

{include 'dsmc_footer'}
{include 'dsmc_script'}
</body>
</html>