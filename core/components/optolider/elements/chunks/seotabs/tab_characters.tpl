{'!getcharacters' | snippet : [
'tpl' => 'cat_option.tpl',
] ?: '
<p>
Технические характеристика товара <b>' ~ 'pagetitle' | resource ~ ' </b> не указаны.</p>
<p>Уточнить их вы можете у нашего менеджера, позвонив нам по телефону <a class="font-weight-bold" href="'~ ('phone_4' | option | preg_replace:'/[^0-9]|/': '') ~ '">' ~ 'phone_4' | option ~ '</a></p>
'}