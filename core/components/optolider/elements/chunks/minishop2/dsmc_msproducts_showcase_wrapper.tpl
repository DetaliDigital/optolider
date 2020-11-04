<section class="{'dsmc_wrapper_class_section' | placeholder}" {if 'dsmc_wrapper_color_section' | placeholder ?}style="background-color: {'dsmc_wrapper_color_section' | placeholder}"{/if}>
    <div class="container">
        <div class="section-title py-4">
            {if 'dsmc_wrapper_title' | placeholder ?}
            <h2>{'dsmc_wrapper_title' | placeholder}</h2>
            {/if}
            {if 'dsmc_wrapper_more' | placeholder == 1}
            <div class="section-more">
                <a href="{'dsmc_wrapper_parent' | placeholder | url}" class="pb-5 text-secondary">Все товары категории</a>
            </div>
            {/if}
            {if 'dsmc_wrapper_swiper' | placeholder == 1}
            <div class="position-relative">
                <div class="swiper-container similar-base-carusel">
                    <div class="swiper-wrapper">
                        {else}
                        <div class="row">
            {/if}
            {$output}
            {if 'dsmc_wrapper_swiper' | placeholder == 1}
                        </div>
                        <div class="swiper-pagination"></div>
                    </div>
                    <div class="swiper-outside-nav align-with-products">
                        <div id="similarPrev" class="swiper-button-prev"></div>
                        <div id="similarNext" class="swiper-button-next"></div>
                    </div>
                </div>
                {else}
            </div>
        </div>
        {/if}
        </div>
    </div>
</section>