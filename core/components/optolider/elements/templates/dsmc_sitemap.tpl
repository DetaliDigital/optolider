{'!pdoSitemap' | snippet : [
'parents' => 0,
'showHidden' => 1,
'tpl' => '@INLINE <url>
<loc>{$url}</loc>
<lastmod>{$date}</lastmod>
<changefreq>{$update}</changefreq>
<priority>{$priority}</priority>
</url>
'
]}