<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.3/jquery.min.js" integrity="sha256-aaODHAgvwQW1bFOGXMeX+pC4PZIPsvn2h1sArYOhgXQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript" src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/themes.js"></script>

<!-- Fancybox-->
<script src="{'assets_url' | option}components/okli/dist/optolider/@fancyapps/fancybox/jquery.fancybox.min.js"></script>

<script src="js/slick.min.js"></script>
<script src="js/custom.js?{filemtime($modx->getOption('base_path') ~ 'js/custom.js')}"></script>

{$_modx->config.statistics}
{$_modx->config.widget}

<script>
function injectSvgSprite(path) {

var ajax = new XMLHttpRequest();
ajax.open("GET", path, true);
ajax.send();
ajax.onload = function(e) {
var div = document.createElement("div");
div.className = 'd-none';
div.innerHTML = ajax.responseText;
document.body.insertBefore(div, document.body.childNodes[0]);
}
}
// this is set to Bootstrapious website as you cannot
// inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
// while using file:// protocol
// pls don't forget to change to your domain :)
injectSvgSprite('{'assets_url' | option}components/optolider/dist/icons/svg-sprite.svg');
</script>

{$_modx->regClientScript('assets_url' | option ~ 'components/optolider/dist/js/theme.js')}