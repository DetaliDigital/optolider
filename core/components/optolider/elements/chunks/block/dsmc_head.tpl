<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <base href="{$_modx->config.site_url}">

    {if 'template' | resource == 45 || 'template' | resource == 8}

        <title>{'st.title' | placeholder}</title>
        <meta name="description" content="{'st.description' | placeholder}" />

    {else}

        {if $_modx->resource.title != ''}
            <title>{$_modx->resource.title}</title>
        {else}
            <title>{$_pls['dsmc_title']}</title>
        {/if}
        {if $_modx->resource.desc != ''}
            <meta name="description" content="{$_modx->resource.desc}" />
        {else}
            <meta name="description" content="{$_pls['dsmc_description']}" />
        {/if}

    {/if}

    <meta name="viewport" content="width=device-width">
    <meta name="Document-state" content="Dynamic" />
    <meta name="Revizit-after" content="3 days" />

    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/fonts/stylesheet.css">
    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/css/style.default.min.css" id="theme-stylesheet">

    {*
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="css/themes.css">
    <link rel="stylesheet" href="css/custom.css?{filemtime($modx->getOption('base_path') ~ 'css/custom.css')}">
    <link rel="stylesheet" href="css/style_catalog.css?{filemtime($modx->getOption('base_path') ~ 'css/style_catalog.css')}">
    *}

    <link rel="stylesheet" href="{'assets_url' | option}components/optolider/dist/css/">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0-11/css/all.min.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="img/favicon.png" />

    <meta name='yandex-verification' content='6e3eed18d33c0024' />
    <script src="https://vk.com/js/api/openapi.js?145"></script>
    <meta name="google-site-verification" content="e-57Un33NFS53Zyrc4NKauNPxoAd1f4HBJ7R1OAf_hw" />
    <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">
    {$_modx->config.analytics}
</head>
<body class="{if $_modx->resource.id == 1}homepage{/if}{if $_modx->resource.template == 8}cartpage{/if}" itemscope itemtype="http://schema.org/WebPage">