{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        <h1 class="h2 text-uppercase font-weight-bold mb-4">{$_modx->resource.pagetitle}</h1>
        
        {'pdoMenu' | snippet : [
        'level' => 0,
        'where' => ['isfolder' => 1],
        'outerClass' => 'nav category my-5 py-4 px-5 d-none d-md-flex',
        'tpl' => 'row.menu.category',
        ]}
        
        {set $ms = '!mSearch2' | snippet : [
        'returnIds' => 1,
        'limit' => 0,
        'minQuery' => 2
         ]}
        
        <div class="row catalog_0718">
          {'!mFilter2' | snippet : [
        'parents' => $_modx->resource.id
        'tplOuter' => 'tpl.mFilter2.outer.dsmc',
        'tpl' => 'row.product.dsmc',
        'sortby' => ['publishedon' => 'DESC']
        'resources' => $ms,
        'element' => 'msProducts',
        'includeTVs' => 'tag,notavailable,dropshiping,stock'
        'class' => 'msProduct'
        'limit' => 16,
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