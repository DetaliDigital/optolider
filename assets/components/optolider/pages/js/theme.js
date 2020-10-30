'use strict';

$(function () {

    // =====================================================
    //      Forms custom JS mvtForms2
    // =====================================================

    mvtForms2.callbacks.success = function (response) {
        $("body").overhang({
            type: "success",
            message: response.data.answer
        });
        $('#' + response.form + '_form').reset();
    };

    mvtForms2.callbacks.error = function (response) {
        $("body").overhang({
            type: "error",
            message: response.data.message
        });
    };

    $('.btn.btn-lg.btn-warning').on("show.bs.modal", function(e){
       console.log('show bs modal');
    });

    $('.form-spinner').inputSpinner();

    $(document).on('show.bs.modal','#oneClickForm', function (e) {
        let object = $(e.relatedTarget);
        let title = object.data('title');
        let product = object.data('product');
        $(this).find('.mvtforms2-modal-title').html(`${ title } <span class="text-success">${ product }</span>`);
    });

    document.querySelectorAll('.container').forEach(n => {
        const similarBaseCarusel = new Swiper(n.querySelector('.similar-base-carusel'), {
            slidesPerView: 1,
            spaceBetween: 5,
            watchOverflow: true,
            loopedSlides: 50,
            roundLengths: true,
            slidesPerGroup: 1,
            autoHeight: true,
            setWrapperSize: true,
            breakpoints: {
                1200: {
                    slidesPerView: 4,
                    spaceBetween: 30,
                },
                991: {
                    slidesPerView: 3,
                },
                768: {
                    slidesPerView: 2,
                },
                576: {
                    slidesPerView: 1,
                }
            },
            pagination: {
                el: n.querySelector('.swiper-pagination'),
                clickable: true,
                dynamicBullets: true
            },
            on: {
                init: function () {
                },
            },
            // Navigation arrows
            navigation: {
                nextEl: n.querySelector('.swiper-button-next'),
                prevEl: n.querySelector('.swiper-button-prev'),
            },
        });
    });
});