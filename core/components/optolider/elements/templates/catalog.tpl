{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="text-uppercase font-weight-bold mb-4">{'pagetitle' | resource}</h1>

        <div class="catalog_0718">

            {'!mCacher' | snippet : [
            'cached_element'=>'msPCS',
            'cacheExpires'=>0,
            'mode' => 2,
            'up' => 1,
            'prepareSnippet' => 'prepareSnippet',
            'snippet' => 'mFilter2',
            'tplOuter' => 'tpl.mFilter2.filter.dsmc',
            'tpls' => 'row.product.dsmc.list,row.product.dsmc.mobile',
            'element' => 'msProducts',
            'includeTVs' => 'tag,notavailable,dropshiping,stock'
            'class' => 'msProduct'
            'limit' => 48,
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

{include 'dsmc_footer'}
{include 'dsmc_script'}
<script>
    $(document).ready(function() {
        $(document).on('change', '#mse2_sort', function() {
            var selected = $(this).find('option:selected');
            var sort = selected.data('sort');
            sort += mse2Config.method_delimeter + selected.val();
            mse2Config.sort =  sort;
            mSearch2.submit();
        });
    });
</script>
</body>
</html>