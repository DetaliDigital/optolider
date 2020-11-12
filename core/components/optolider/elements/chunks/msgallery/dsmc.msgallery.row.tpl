<div class="detail-carousel">
    <div class="detail-gallery swiper-container">
        <div class="swiper-wrapper">
            {if $files?}
                {foreach $files as $file}
                    <div class="swiper-slide">
                        <a href="{$file['url']}" title="Дуб Azores —  (Однополосный)" class="fancy" data-fancybox="gallery">
                        <img src="{$file['url'] | phpthumbon : "w=425&h=450&q=70&bg=FFFFFF&fltr=wmi|/assets/images/optolider/watermark_opto.png|C|40"}"/>
                        </a>
                    </div>
                {/foreach}
            {/if}
        </div>
    </div>
    <div class="detail-gallery-trumps position-relative swiper-container">
        <div class="swiper-wrapper">
            {if $files?}
            {foreach $files as $file}
            <div class="swiper-slide">
                <img src="{$file['url'] | phpthumbon : "w=75&h=75&q=70&bg=FFFFFF"}">
            </div>
            {/foreach}
            {/if}
        </div>
    </div>
</div>