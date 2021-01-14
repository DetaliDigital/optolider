{extends 'template:Базовый шаблон'}
{block 'main'}
<div class="main my-4 inside">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1>{'pagetitle' | resource}</h1>
        {'!msListOrders' | snippet : [
        'actions' => 'view,repeat,cart,cancel',
        'tpl' => 'dsmc.msListOrders',
        'tplOrder' => 'dsmc.msListOrders.order'
        ]}
    </div>
</div>
{/block}