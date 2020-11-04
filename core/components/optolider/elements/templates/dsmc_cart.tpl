{extends 'template:Базовый шаблон'}
{block 'main'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="h2 text-uppercase font-weight-bold mb-4">{'pagetitle' | resource}</h1>

        {'!msCart' | snippet : [
        'tpl' => 'tpl.msCart.dsmc'
        ]}
        {'!msOrder' | snippet : [
        'tpl' => 'dsmc.tpl.msOrder'
        ]}

    </div>
</div>

{/block}