{extends 'template:Базовый шаблон'}

{block 'main'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="text-uppercase font-weight-bold mb-4">{'pagetitle' | resource}</h1>

        <div class="catalog_0718">

            {if $_modx->user.id > 0}
                {'!mSearch2' | snippet : [
                'returnIds' => 1
                'limit' => 0
                ]}
            {/if}

            {if $.get['query'] ?}
                {set $dsmc_parent = 2}
                {else}
                {set $dsmc_parent = $dsmc_mspcs_where}
            {/if}


            {'!mCacher' | snippet : [
            'parents' => $dsmc_parent ?: 'id' | resource,
            'cached_element'=>'msPCS',
            'cacheExpires'=>0,
            'mode' => 2,
            'up' => 1,
            'showLog' => 0,
            'prepareSnippet' => 'prepareSnippet',
            'snippet' => 'mFilter2',
            'tplOuter' => 'tpl.mFilter2.filter.dsmc',
            'tpls' => 'dsmc.msProducts.list,dsmc.msProducts.row',
            'element' => 'msProducts',
            'includeTVs' => 'tag,notavailable,dropshiping,stock'
            'class' => 'msProduct'
            'limit' => 48,
            'rowPlaceholders' => [
            'class' => 'col-md-6 col-lg-4'
            ],
            'tplFilter.outer.default'=> 'dtls.tpl.mFilter2.filter.outer'
            'tplFilter.row.default'=> 'dtls.tpl.mFilter2.filter.checkbox'
            ]}

        </div>

        {if $_modx->resource.content ?}
        <section>
            {$_modx->resource.content}
            {$_modx->resource.txt}
        </section>
        {/if}
        <section class="py-5">
            <div class="container">
                {include 'dsmc_delivery'}
            </div>
        </section>
    </div>
</div>

{/block}