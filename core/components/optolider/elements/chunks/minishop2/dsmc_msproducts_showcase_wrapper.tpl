<section class="{'dsmc_wrapper_class_section' | placeholder}">
    <div class="container">
        <div class="section-title py-4">
            {if 'dsmc_wrapper_title' | placeholder ?}
            <h2>{'dsmc_wrapper_title' | placeholder}</h2>
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