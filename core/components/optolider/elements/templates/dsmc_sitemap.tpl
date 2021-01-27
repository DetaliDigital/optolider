{'!pdoSitemap' | snippet : [
'parents' => 0,
'showHidden' => 1,
'tpl' => '@INLINE <url>\n\t
<loc>{$url}</loc>\n\t
<lastmod>{$date}</lastmod>\n\t
<changefreq>{$update}</changefreq>\n\t
<priority>{$priority}</priority>\n
</url>
'
]}