{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="text-uppercase font-weight-bold mb-4">{$_modx->resource.pagetitle}</h1>
        
        {*
        {'pdoMenu' | snippet : [
        'level' => 0,
        'where' => ['isfolder' => 1],
        'outerClass' => 'nav category my-5 py-4 px-5 d-none d-md-flex',
        'tpl' => 'row.menu.category',
        ]}
        *}
        
        <div class="catalog_0718">
        {'!mCacher' | snippet : [
        'cached_element'=>'msPCS',
        'cacheExpires'=>0,
        'mode' => 2,
        'up' => 1,
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