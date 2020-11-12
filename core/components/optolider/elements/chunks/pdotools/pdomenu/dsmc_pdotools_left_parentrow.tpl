<li class="{$classnames}">
    <span class="opener plus"></span>
    <a href="{$link}" class="page-scroll" {$attributes}>
        {if $icon_menu ?}<i class="{$icon_menu}"></i>{/if}
        {$menutitle}</a>

    {set $tv_res = 4496 | resource: 'structure'}
    {set $tv_id = $id}
    {set $rows = json_decode($tv_res, true)}

    {foreach $rows as $row}
    {if $tv_id == $row.resourse}
    <div class="megamenu mobile-sub-menu sub-col-{$row.col}">
        <div class="header-search d-xl-none bg-success-1 py-3 col-12">
            <a href="#" class="btn btn-link text-white slide3_title"><i class="far fa-caret-square-left mr-2 text-warning"></i>Каталог</a>
        </div>
        <div class="header-search d-xl-none bg-success-2 py-3 col-12">
            <a href="{$link}" class="btn btn-link text-white slide4_title"><i class="{$icon_menu} mr-2 text-warning"></i>{$menutitle}</a>
        </div>
        <div class="megamenu-inner-top">
            <ul class="sub-menu-level1 row">
                {set $section_menu = $row.level | fromJSON}

                {foreach $section_menu as $section}
                <div class="col-12 col-xl-{if $row.col == 1}12{/if}{if $row.col == 2}6{/if}{if $row.col == 3}4{/if}{if $row.col == 4}3{/if} {if $section.no_title == 1}no-title{/if}">
                    {set $categories_menu = $section.categories | fromJSON}
                    {foreach $categories_menu as $cat}
                    <li class="level2">
                        {if $cat.name != ''}
                        {if $cat.link == ''}
                        <p>
                            {else}
                            <a href="{$cat.link}">{/if}<span>{$cat.name}</span>
                                {if $cat.link == ''}
                        </p>
                        {else}
                        </a>
                        {/if}
                        {/if}
                        <ul class="sub-menu-level2{if $cat.no_title == 1} no-title{/if}">
                            {set $item_menu = $cat.item | fromJSON}
                            {foreach  $item_menu as $item}
                            {if $item.all == 1}
                            <li class="level3"><a href="{if $item.id == ''}{$item.url}{else}{$_modx->makeUrl($item.id)}{/if}" class="menu_view_all {if $section.no_title == 1}text-uppercase{/if}" {if $item.target == 1}target="_blank"{/if}>{$item.title}</a></li>
                            {else}
                            <li class="level3"><a href="{if $item.id == ''}{$item.url}{else}{$_modx->makeUrl($item.id)}{/if}" class="{if $section.no_title == 1}text-uppercase{/if}" {if $item.target == 1}target="_blank"{/if}>{$item.title}</a></li>
                            {/if}
                            {/foreach}
                        </ul>
                        {set $banner_menu = $cat.ban | fromJSON}
                        {foreach $banner_menu as $ban}
                        <a href="{$ban.link_id}">
                            <img class="img-fluid" src="{$ban.img_ban}">
                        </a>
                        {/foreach}
                    </li>
                    {/foreach}
                </div>
                {/foreach}
            </ul>
        </div>
    </div>
    {/if}
    {/foreach}

</li>