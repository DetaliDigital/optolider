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
    $(document).on('mse2_load', function (e, response) {
        $('.form-spinner').inputSpinner();
    });

    $(document).on('show.bs.modal','#oneClickForm', function (e) {
        let object = $(e.relatedTarget);
        let title = object.data('title');
        let product = object.data('product');
        $(this).find('.mvtforms2-modal-title').html(`${ title } <span class="text-success">${ product }</span>`);
    });

    $(document).on('show.bs.modal','#listOrderProducts', function (e) {
        let object = $(e.relatedTarget);
        let title = object.data('title');
        $(this).find('.listOrderProductsTitle').html(`Заказ № <span class="text-success">${ title }</span>`);
    });

    $('#registration-tab').click(function () {
        $('#reset-tab').removeClass('active');
    })

    document.querySelectorAll('.container').forEach(n => {
        const similarBaseCarusel = new Swiper(n.querySelector('.similar-base-carusel'), {
            slidesPerView: 1.1,
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
                    slidesPerView: 3.3,
                },
                768: {
                    slidesPerView: 2.3,
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

    if ($('.detail-gallery').length)
    {
        let galleryThumbs = new Swiper('.detail-gallery-trumps', {
            direction: 'vertical',
            spaceBetween: 15,
            slidesPerView: 4,
            //loop: true,
            //loopedSlides: 4,
            //centeredSlides: true,
            watchSlidesVisibility: true,
            watchSlidesProgress: true,
            centerInsufficientSlides: true,
            slideToClickedSlide: true,
            touchRatio: 0,
        })
        let galleryTop = new Swiper('.detail-gallery', {
            effect: 'fade',
            touchRatio: 0,
            thumbs: {
                swiper: galleryThumbs
            },
            on: {
                slideChange: function () {
                    let activeIndex = this.activeIndex + 1;

                    let activeSlide = document.querySelector(`.detail-gallery-trumps .swiper-slide:nth-child(${activeIndex})`);
                    let nextSlide = document.querySelector(`.detail-gallery-trumps .swiper-slide:nth-child(${activeIndex + 1})`);
                    let prevSlide = document.querySelector(`.detail-gallery-trumps .swiper-slide:nth-child(${activeIndex - 1})`);

                    if (nextSlide && !nextSlide.classList.contains('swiper-slide-visible')) {
                        this.thumbs.swiper.slideNext()
                    } else if (prevSlide && !prevSlide.classList.contains('swiper-slide-visible')) {
                        this.thumbs.swiper.slidePrev()
                    }

                }
            }
        })
    }

    // =====================================================
    //      BsMultiselect
    // =====================================================

    $("select[multiple='multiple']").bsMultiSelect({
        useCssPatch: true,
        cssPatch: {
            choice: 'py-1',
            choice_hover: 'bg-white',

        }
    });

    // =====================================================
    //      Social Share Buttons
    // =====================================================

    $(window).scroll(function () {
        if ($(this).scrollTop() > $(this).height()) {
            $(".on-up").addClass("active");
        } else {
            $(".on-up").removeClass("active");
        }
    });

    $(".on-up.top").click(function () {
        $("html, body").stop().animate({scrollTop: 0}, "slow", "swing");
    });

    var share = document.querySelector('.share-button');
    var isOpened = false;
    document.querySelector('.open_share').addEventListener('click', function(){
        if(!isOpened){
            share.classList.add('open');
            isOpened = true;
        }
        else{
            share.classList.remove('open');
            isOpened = false;
        }
    });

    var is_safari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);

    if (is_safari) {
        $('feGaussianBlur').attr('stdDeviation', 0);
    }
});

