{var $style = [
'logo' => 'display:block;margin: auto;',
'a' => 'color:#348eda;',
'p' => 'font-family: Arial;color: #666666;font-size: 12px;',
'h' => 'font-family:Arial;color: #111111;font-weight: 200;line-height: 1.2em;',
'h1' => 'font-size: 36px;',
'h2' => 'font-size: 28px;',
'h3' => 'font-size: 22px;',
'th' => 'font-family: Arial;text-align: left;color: #111111;',
'td' => 'font-family: Arial;text-align: left;color: #111111;padding:25px;',
'td_product' => 'border:1px solid #ccc; font-family: Arial;text-align: left;color: #111111;padding:3px 5px;',
'th_product' => 'font-family: Arial;text-align: center;color: #111111;border:1px solid #ccc; padding:3px 5px;',
'a_footer' => 'font-size:12px;color:#99999;'
'p_footer' => 'font-size:12px;color:#99999;padding:0 25px;'
]}

{var $site_url = ('site_url' | option) | preg_replace : '#/$#' : ''}
{var $site_name = ('site_name' | option)}
{var $assets_url = 'assets_url' | option}

{set $dsmc_list = $fields}
{set $dsmc_cost = $fields}

{unset $dsmc_list['id'] $dsmc_list['stock']}

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>{$site_name}</title>
    <style type="text/css">
        .container .cart {
            margin: 30px;
        }
        .cart td, .cart th {
            padding: 5px 10px;
            border-top: 1px solid #dee2e6;
            border-bottom: 1px solid #dee2e6;
        }
        .container .cart img {
            padding: 20px 0;
        }
        .container .cart h5 {
            margin-bottom: 5px;
            margin-top: 5px;
        }
        .container .cart .price ,.price {
            font-size: 16px;
            font-weight: 600;
            color: #{$_modx->config.em_color_themes};
        }
        .price + span {
            font-size: 12px;
            padding-left: 5px;
            color: #a59898;
        }

        h5 span {
            font-size: 12px;
            padding-left: 5px;
            color: #a59898;
        }

        .container table {
            width: 90% !important;
            border-collapse: collapse;
            margin-left: 0px !important;
            margin-right: 0px !important;
            text-align: center;
        }

    </style>

</head>
<body style="margin:0;padding:0;background:#f6f6f6;">
<div style="height:100%;padding-top:20px;background:#f6f6f6;">
    {block 'logo'}
        <a href="{$site_url}">
            <img style="{$style.logo}" src="{$site_url}/novie-izobrajeniya/mail_img/opto_mail_logo.png" alt="{$site_name}" width="150"/>
        </a>
    {/block}
    <!-- body -->
    <table class="body-wrap" style="padding:0 20px 20px 20px;width: 100%;background:#f6f6f6;margin-top:10px;">
        <tr>
            <td></td>
            <td class="container" style="border:1px solid #f0f0f0;background:#ffffff;width:800px;margin:auto;">
                <div class="content">
                    <table style="width:100%;">
                        <tr>
                            <td style="{$style.td}">
                                <h3 style="{$style.h}{$style.h3}">{$form} интернет-магазин <b>{'site_name' | option | ucfirst}</b></h3>
                                <br>
                                <p>Здравствуйтe.</p>
                                <p><b>{$fields['Имя']}</b>, обратился(ась) к Вам за консультацией. Перозвоните ему, клиент обратил внимание на страницу <a href="{$site_url}/{$fields['id'] | resource: 'uri' }">"{$fields['id'] | resource: 'pagetitle' }"</a>{$fields['stock'] == 1 ? ' ,но к сожалению данного товара нет в наличии.' : ''}</p>
                                <br>
                                <h4>Данные для обратной связи:</h4>
                                {foreach $dsmc_list as $name => $value}
                                    {if $value ?}
                                        {if $name != 'Файлы'}
                                            <p><b>{$name}</b>: {$value}</p>
                                        {else}
                                            <p><b>{$name}</b>: <a href="{$value}">Посмотреть файлы на Я.Диске</a></p>
                                        {/if}
                                    {/if}
                                {/foreach}
                                <br>
                                <div style="border-top:1px solid #f0f0f0;"></div>
                                <p>Приятной работы!</p>
                </div>


                {if $cart?}
                    <hr>
                    {set $summ = 0}
                    <h3>Товары в корнизе покупателя</h3>
                    <table style="border-collapse: collapse;">
                        <tr>
                            <th style="{$style.th_product}">Товар</th>
                            <th style="{$style.th_product}">Количество</th>
                            <th style="{$style.th_product}">Цена</th>
                            <th style="{$style.th_product}">Сумма</th>
                        </tr>
                        {foreach $cart as $item}
                            {set $s = $item['price']*$item['count']}
                            <tr>
                                <td style="{$style.td_product}">{$item['name']}</tdh>
                                <td style="{$style.td_product}">{$item['count']}</td>
                                <td style="{$style.td_product}">{$item['price']}</td>
                                <td style="{$style.td_product}">{$s}</tdh>
                            </tr>
                            {set $summ = $summ + $s}
                        {/foreach}
                    </table>
                    <h4>Сумма заказа: {$summ}</h4>
                {/if}
            </td>
        </tr>
    </table>
</div>
<!-- /content -->
</td>
<td></td>
</tr>
</table>
<!-- /body -->
<!-- footer -->
<table style="clear:both !important;width: 100%;">
    <tr>
        <td></td>
        <td class="container">
            <!-- content -->
            <div class="content">
                <table style="width:100%;text-align: center;">
                    <tr>
                        <td align="center">
                            <p style="{$style.p}">
                                {block 'footer'}
                                <a href="{$site_url}" style="{$style.a_foorer}">
                                    {'' | date : 'Y'}, {'site_name' | option | ucfirst}, Все права защищены
                                </a>
                            <p style="{$style.p_footer}">© ОптоЛидер - главный оптовый склад Работаем с 2014 года!</p>
                            {/block}
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
            <!-- /content -->
        </td>
        <td></td>
    </tr>
</table>
<!-- /footer -->
</div>
</body>
</html>