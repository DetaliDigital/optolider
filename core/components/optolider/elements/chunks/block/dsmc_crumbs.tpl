{if $_modx->resource.template != 8}
{'!pdoCrumbs' | snippet : [
'tplWrapper' => '@INLINE <div class="breadcramb"><ol class="breadcrumb bg-white pl-0 ml-0">{$output}</ol></div>'
'exclude' => '2',
'tpl' => 'tpl.bredcrumbs.item'
'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
'outputSeparator' => ' ',
'showHome' => 1
]}
{else}

{set $idcurrent = $_modx->resource.pagetitle}
{'!pdoCrumbs' | snippet : [
'exclude' => '2',
'to' => $_modx->resource.tv_parent,
'tplWrapper' => '@INLINE <div class="breadcramb"><ol class="breadcrumb bg-white pl-0 ml-0">{$output}</ol></div>'
'tpl' => 'tpl.bredcrumbs.item'
'tplCurrent' => 'tpl.bredcrumbs.current'
'outputSeparator' => ' ',
'showHome' => 1
]}
{/if}