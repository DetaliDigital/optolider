{'!pdoCrumbs' | snippet : [
'tplWrapper' => '@INLINE <div class="breadcramb"><ol class="breadcrumb bg-white pl-0 ml-0">{$output}</ol></div>'
'exclude' => '2',
'tpl' => 'tpl.bredcrumbs.item'
'tplCurrent' => '@INLINE <li class="breadcrumb-item active" aria-current="page">{$menutitle}</li>'
'outputSeparator' => ' ',
'showHome' => 1
]}