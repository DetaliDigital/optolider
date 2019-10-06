$(document).ready(function() {

  $('.input-group').on('click', '.input_count_action', function(e) {

    var $input = $(this).closest("div").find('input');
    var count = parseInt($input.val());

    if ($(this).hasClass("plus")) {
      count = count + 1;
    } else if ($(this).hasClass("minus")) {
      count = count - 1;
    }

    $input.val(count);
    $input.change();

    return false;
  });

  $('div.count').click(function(e) {
    var v = $(this).parent().find('input#product_price').val(),
      k = $(this).parent().find('input[name="key"]').val();

    if (($(this).hasClass('minus') || $(this).hasClass('plus')) && v > 0) {

      $.post("", {
        ms2_action: 'cart/change',
        key: k,
        count: v
      }, function(response) {

        if (typeof response.success !== "undefined") {

          if (response.success) {
            miniShop2.Order.getcost();
            miniShop2.Cart.status(response.data);
          }
        }
      }, "json");

    }
  });

	miniShop2.Callbacks.Cart.change.before = function() {
		var $field = $(miniShop2.sendData.$form[0]).find(miniShop2.Cart.countInput);
		var count = +$field.val();
		if (count < 1) {
			$field.val('1');
			miniShop2.Message.error('Ошибка! Нельзя ставить кол-во меньше 1!');
			return false;
		}
		return true;
	}

  $(document).on('change', '[name="region"]', function() {
    if ($('[name="region"]:checked').attr('id') == 'delivery_moscow') {
      $("#delivery_2").show();
      $("#delivery_4").show();
      $("#delivery_1").hide();
      $("#delivery_3").hide();
      $("#city").hide();

    }
    if ($('[name="region"]:checked').attr('id') == 'delivery_spb') {
      $("#delivery_2").hide();
      $("#delivery_1").show();
      $("#delivery_3").show();
      $("#delivery_4").hide();
      $("#city").hide();

    }
    if ($('[name="region"]:checked').attr('id') == 'delivery_region') {
      $("#delivery_1").hide();
      $("#delivery_2").hide();
      $("#delivery_3").hide();
      $("#delivery_4").show();
      $("#city").show();
    }
  })

  if ($(window).width() < 576) {
    $('.variable-width').slick({
      dots: false,
      arrows: false,
      speed: 300,
      slidesToShow: 1,
      variableWidth: true
    });
  }

  if ($(window).width() < 576) {
    $('.variable-tabs').slick({
      dots: false,
      arrows: false,
      speed: 300,
      slidesToShow: 1,
      variableWidth: true
    });


    $('.nav-link').click(function() {
           $('.nav-tabs .nav-link').removeClass('active');
        });

  }



  $('.product_slider').slick({
    dots: false,
    infinite: false,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    responsive: [{
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: false,
          dots: false
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1,
          infinite: false,
          dots: false
        }
      }
    ]
  });

  /* ---- For Navbar JS Start ---- */
  $('.navbar-toggle').on("click", function() {
    var menu_id = $('#menu');
    var nav_icon = $('.navbar-toggle i');
    var nav_body = $('body');
    if (menu_id.hasClass('menu-open')) {
      menu_id.removeClass('menu-open');
      nav_icon.removeClass('fa-times');
      nav_icon.addClass('fa-bars');
      nav_icon.removeClass('fa-times');

      function pausemenufixed() {
        nav_body.removeClass('fixed');
      }
      setTimeout(pausemenufixed, 200);
      nav_body.animate({
        left: '0px'
      }, 200);
    } else {
      menu_id.addClass('menu-open');
      nav_icon.addClass('fa-times');
      nav_icon.removeClass('fa-bars');
      nav_body.addClass('fixed');
      nav_body.animate({
        left: '250px'
      }, 200);
    }
    return false;
  });
  /* ---- For Navbar JS End ---- */

  /* ---- For Mobile Menu Slide JS Start ---- */

  $(".btn-slide-1").on("click", function() {
    var menuslider = $(this);
    var nav_right = $('.menu-slide-1');
    var nav_left = $('.nav.navbar-nav');
    var title = $('.slide2_title');
    if (menuslider.hasClass('on')) {
      menuslider.removeClass('on');
    } else {
      title.removeClass('on');
      menuslider.addClass('on');
      nav_right.animate({
        right: '250px'
      }, 200);

      function pausemenuslide1() {
        nav_right.addClass('d-none');
        nav_left.addClass('menu-slide-2');
        nav_left.animate({
          left: '0px'
        }, 200);
      }
      setTimeout(pausemenuslide1, 200);
    }
    return false;
  });

  $(".slide2_title").on("click", function() {
    var menuslider_retutn = $(this);
    var nav1_right = $('.nav.navbar-nav');
    var nav1_left = $('.menu-slide-1');
    var slide_1 = $(".btn-slide-1")
    if (menuslider_retutn.hasClass('on')) {
      menuslider_retutn.removeClass('on');
    } else {
      menuslider_retutn.addClass('on');
      slide_1.removeClass('on');
      nav1_right.animate({
        left: '-250px'
      }, 200);

      function pausemenuslide2() {
        nav1_right.removeClass('menu-slide-2');
        nav1_left.removeClass('d-none');
        nav1_left.animate({
          right: '0'
        }, 200);
      }
      setTimeout(pausemenuslide2, 200);
    }
    return false;
  });

  if ($(window).width() < 1040) {
    $(".level.dropdown").on("click", function() {
      var menuopener = $(this);
      if (menuopener.hasClass('dropdown-left1')) {} else {
        menuopener.closest('#menu').children('ul').animate({
          left: '-250px'
        }, 200);

        function pausemenuslide3() {
          menuopener.closest('#menu').children('ul').addClass('d-none');
          menuopener.children('#menu .mobile-sub-menu').clone(true).appendTo('.menu-outer').addClass('d-block').animate({
            left: '0'
          }, 200);
        }
        setTimeout(pausemenuslide3, 200);
      }
      return false;

    });

    $(".slide3_title").on("click", function() {
      var menuslider2_retutn = $(this);
      var menuslide = $('#menu > menu-slide-2');
      var menureturn = $('.nav.navbar-nav');
      var delete_div = $('.menu-outer .megamenu');
      var dropdown = $('#menu .sub-megamenu');
      if (menuslider2_retutn.hasClass('dropdown-left')) {
        menuslider2_retutn.removeClass('dropdown-left');
      } else {
        menuslider2_retutn.addClass('dropdown-left');
        delete_div.animate({
          left: '-250'
        }, 200);
        dropdown.removeClass('.dropdown-left');

        function pausemenuslide4() {
          delete_div.remove();
          menureturn.removeClass('d-none');
          menureturn.animate({
            left: '0'
          }, 200);
        }
        setTimeout(pausemenuslide4, 200);
      }
    });

  }


  /* ---- For Mobile Menu Slide JS End ---- */

  /* ---- Add class active tabs JS Start ---- */

  $("#myTab li:first").addClass("active");
  $("#myTab li:first > a").addClass("active");
  $("#myTabContent div:first").addClass("show active");


  /* ---- Add class active tabs JS End ---- */

  /* ---- Gallery JS Start ---- */

  if ($(window).width() < 576) {
    $('.desktop').remove();
  }
  else {
    $('.zoom-section').addClass('vertical-zoom');
    $('.mobile').remove();
  }

  /* ---- Gallery JS End ---- */

});
