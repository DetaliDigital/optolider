<ul {$classes}>
    <div class="header-search d-xl-none bg-success-2 py-3 mb-3">
        <div class="container">
            <a href="#" class="btn btn-link text-white text-uppercase slide2_title"><i
                        class="far fa-caret-square-left mr-2 text-warning"></i>Каталог</a>
        </div>
    </div>
    {$wrapper}
    {if $_modx->user.id > 0}

    {set $tv_res = 4496 | resource: 'structure'}
    {set $tv_id = $id}
    {set $rows = json_decode($tv_res, true)}
    {foreach $rows as $row}
        {if $row.icon ?}
        <li class="level sub-megamenu nav-promo hover-bg-danger">
            <a class="nav-link" href="{$row.resourse | url}">
                {if $row.icon ?}
                    <span class="icon icon-shape icon-shape-danger icon-shape-rounded icon-shape-md">
                        <svg class="svg-icon svg-icon-stroke-none svg-icon-white svg-icon-sm">
                            <use xlink:href="#{$row.icon}"></use>
                        </svg>
                    </span>
                {/if}
                {$row.title}
            </a>
        </li>
        {/if}
    {/foreach}
    {/if}
</ul>