$(document).ready(function() {

$('.input-group').on('click', '.input_count_action', function(e) {

	var $input = $(this).closest("div").find('input');
	var count = parseInt($input.val());

	if ($(this).hasClass("plus")) {
		count = count + 1;
	} else if ($(this).hasClass("minus")) {
		count = count - 1;
	}
	count = (count > 1) ? count : 1;

	$input.val(count);
	$input.change();

	return false;
});

$('div.count').click(function(e){
        var v = $(this).parent().find('input#product_price').val(),
            k = $(this).parent().find('input[name="key"]').val();

        if( ($(this).hasClass('minus') || $(this).hasClass('plus') ) && v > 0) {

            $.post("", {ms2_action: 'cart/change', key: k, count: v }, function(response) {

                if (typeof response.success !== "undefined") {

                        if (response.success) {
                             miniShop2.Order.getcost();
                             miniShop2.Cart.status(response.data);
                        }
                    }
            }, "json");

        }
    });

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

});
