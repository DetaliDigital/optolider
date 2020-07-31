{include 'dsmc_head'}
{include 'dsmc_header'}

<div class="main my-4">
    <div class="container">
        {include 'dsmc_crumbs'}
        {if 'pagetitle' | resource ?}
        <h1 class="text-uppercase font-weight-bold mb-4">{'pagetitle' | resource}</h1>
        {/if}
    </div>

    {set $section_category_top_id = $_modx->resource.section_category_top | fromJSON}
    {set $section_category_top}
    {foreach $section_category_top_id as $v last=$last}
        {if $last ?}
            {$v | resource : 'id'}
        {else}
            {$v | resource : 'id'},
        {/if}
    {/foreach}
    {/set}

    <div class="overflow-hidden">
        <div class="landing-category bg-light py-5">
            <div class="container">
                <div class="row category-slick">

                    {'!pdoResources' | snippet : [
                    'parents' => 2,
                    'resources' => $section_category_top,
                    'includeTVs' => 'image,sale,new,min_price_category',
                    'tvPrefix' => '',
                    'tpl' => 'category.main.level.bs.tpl',
                    'limit' => 0,
                    'depth' => 10,
                    'where' => ['isfolder' => 1]
                    ]
                    }
                </div>
            </div>
        </div>
        <section class="action-section my-5">
            <div class="container">
                <div class="row d-flex flex-md-row flex-column-reverse">
                    <div class="col-md-5 mb-md-0 p-md-4">
                        {if $_modx->resource.section_top_link ?}
                        <a href="{$_modx->resource.section_top_link | url}">
                            {/if}
                            <img src="{$_modx->resource.section_top_img}" class="img-fluid" alt="...">
                        </a>
                    </div>
                    <div class="col-md-7 position-static p-4 pl-md-0" itemprop="mainContentOfPage">
                        <h2 class="mt-0 h2 font-weight-bold">{$_modx->resource.section_top_title}</h2>
                        <p>{$_modx->resource.section_top_intro}</p>
                    </div>
                </div>
            </div>
        </section>
    </div>

    {set $section_id_showcase_top_id = $_modx->resource.section_id_showcase_top | fromJSON}
    {set $section_id_showcase_top}
    {foreach $section_id_showcase_top_id as $v last=$last}
        {if $last ?}
            {$v | resource : 'id'}
        {else}
            {$v | resource : 'id'},
        {/if}
    {/foreach}
    {/set}

    {set $section_id_showcase_bottom_id = $_modx->resource.section_id_showcase_bottom | fromJSON}
    {set $section_id_showcase_bottom}
    {foreach $section_id_showcase_bottom_id as $v last=$last}
        {if $last ?}
            {$v | resource : 'id'}
        {else}
            {$v | resource : 'id'},
        {/if}
    {/foreach}
    {/set}

    <section class="py-5 catalog-section" id="popular-catalog">
        <div class="catalog-section-head">
            <div class="container">
                {$_modx->resource.section_title_showcase_top ? '<h2>{$_modx->resource.section_title_showcase_top}</h2>' : '<h2><span class="text-primary">Новинки</span> в каталоге</h2>'}

            </div>
        </div>

        <div class="container">

            <div class="row catalog_0718 showcase_slider">
                {'!msProducts' | snippet : [
                'tpl'=> 'row.product.dsmc',
                'parents'=> ('id' | resource),
                'resources' => $section_id_showcase_top,
                'depth' => 5,
                'limit' => 8,
                'sortdir' => 'DESC',
                'includeContent' => 0,
                'includeTVs' => 'price,sale,new,dropshiping',
                ]}
            </div>

            {if 'content' | resource ?}
                <p>{'content' | resource}</p>
            {/if}
        </div>
    </section>

    {set $section_category_bottom = $_modx->resource.section_category_bottom | fromJSON | join}

    {if $section_category_bottom != ''}
        <div class="p-cat-section" id="p-cat-section">
            <div class="container">
                <h3>Популярные категории</h3>
                <div class="p-cat-block clearfix">

                    {'!pdoResources' | snippet : [
                    'parents' => 2,
                    'resources' => $section_category_bottom,
                    'includeTVs' => 'image,sale,new,min_price_category',
                    'tvPrefix' => '',
                    'tpl' => 'category.main.tpl',
                    'limit' => 7,
                    'depth' => 10,
                    'where' => ['isfolder' => 1]
                    ]
                    }

                </div><!--/p-cat-block-->
            </div>
        </div>
    {/if}

    <section class="py-5 catalog-section" id="popular-catalog">
        <div class="catalog-section-head">
            <div class="container">
                {$_modx->resource.section_title_showcase_bottom ? '<h2>{$_modx->resource.section_title_showcase_bottom}</h2>' : '<h2><span class="text-danger">Популярные</span> товары из Китая</h2>'}
            </div>
        </div>

        <div class="container">

            <div class="row catalog_0718 showcase_slider">
                {'!msProducts' | snippet : [
                'tpl'=> 'row.product.dsmc',
                'parents'=> ('id' | resource),
                'resources' => $section_id_showcase_bottom,
                'depth' => 5,
                'limit' => 8,
                'sortdir' => 'DESC',
                'includeContent' => 0,
                'includeTVs' => 'price,sale,new,dropshiping',
                ]}
            </div>
        </div>
    </section>

    <section class="py-5 action-section">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-7 mb-md-0 p-md-4">
                    <h2 class="mt-0 h2 font-weight-bold">{$_modx->resource.section_bottom_title}</h2>
                    <p>{$_modx->resource.section_bottom_intro}</p>
                </div>
                <div class="col-md-5 position-static p-4 pl-md-0">
                    {if $_modx->resource.section_bottom_link ?}
                    <a href="{$_modx->resource.section_bottom_link | url}">
                        {/if}
                        <img src="{$_modx->resource.section_bottom_img}" class="img-fluid" alt="...">
                        {if $_modx->resource.section_bottom_link ?}
                    </a>
                    {/if}
                </div>
            </div>
        </div>
    </section>

    <section class="py-5">
        <div class="container">
            {include 'dsmc_delivery'}
        </div>
    </section>
</div>

{include 'dsmc_footer'}
{include 'dsmc_script'}

</body>
</html>