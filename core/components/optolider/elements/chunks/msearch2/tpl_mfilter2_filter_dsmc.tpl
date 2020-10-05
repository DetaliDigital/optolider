<div class="msearch2 row" id="mse2_mfilter">

    {if $filters}
    <div id="filter" class="col-lg-3 pr-lg-4 navbar-collapse collapse filter-collapse">
        <form action="{$_modx->resource.id | url}" method="post" id="mse2_filters">
            <div class="mse2_custom pt-2 pb-2 mb-5">


                {if 'id' | resource | in : [1617,1616,1991,5514,422,79]}

                {else}

                {'pdoMenu' | snippet : [
                'parents' => $_modx->resource.id | id_left_menu,
                'level' => 0,
                'where' => ['isfolder' => 1],
                'outerClass' => 'nav menu_left_bar w-100',
                'tplOuter' => 'outer.menu.category.leftbar'
                'tpl' => 'row.menu.category.leftbar',
                'rowClass' => 'nav-item w-100'
                ]}
                {/if}

                {$filters}
            </div>
        </form>
    </div>
    {/if}

    <div class="col-lg-{$filters ? '9' : '12'}">

        {if $filters}
        <div class="row sortings py-3 d-flex align-items-center">
            <div id="mse2_sort" class="col-md-5 col-4 d-md-flex text-black-50">
                [[-[[%mse2_sort]]]]
                <button data-target=".navbar-collapse" data-toggle="collapse2" class="navbar-toggle filter-toggle d-xl-none d-block" type="button"><i class="fas fa-sliders-h"></i>
                </button>
            </div>
            <div class="d-flex justify-content-end col-8 col-md-7">
                <select class="form-control col-5 col-md-4" id="mse2_sort">
                    <option class="sort" data-sort="resource|pagetitle" value="asc">А-Я</option>
                    <option class="sort" data-sort="resource|pagetitle" value="desc">Я-А</option>
                    <option class="sort" data-sort="ms|price" value="asc">Цена ↑</option>
                    <option class="sort" data-sort="ms|price" value="desc">Цена ↓</option>
                </select>
                {if $tpls}
                <div id="mse2_tpl" class="d-xl-flex d-none ml-3 align-items-center">
                    <a href="#" data-tpl="0" class="{$tpl0}"><i class="fas fa-list mr-1"></i></a>
                    <a href="#" data-tpl="1" class="{$tpl1}"><i class="fas fa-th ml-1"></i></a>
                </div>
                {/if}
            </div>

        </div>
        {/if}

        <div id="mse2_selected_wrapper">
            <div id="mse2_selected">[[%mse2_selected]]:
                <span></span>
            </div>
        </div>

        <div id="mse2_results" class="{$filters ? 'row ' : ''} catalog_0718">
            {if $filters}
            {$results}
            {else}
            <div class="alert alert-info">
                {$results}
            </div>
            {/if}
        </div>

        <div class="pagination d-flex justify-content-center text-center my-5 mt-5">
            <div id="mse2_pagination" class="mt-5">
                {'page.nav' | placeholder}
            </div>
        </div>

    </div>
</div>