
$(document).ready(function() {
    
    if ($(window).width() < 1170) {
        if ($(".p-cat-block").length) {
			var sb_slider = $(".p-cat-block").slick({
			    slidesToShow: 6,
			    slidesToScroll: 1,
			    arrows: false,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".p-cat-item",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25,
			    centerMode:false,
			    responsive: [
			    {
			      breakpoint: 1023,
			      settings: {
			          slidesToShow: 4 
			      }
			    },
			    {
			      breakpoint: 767,
			      settings: {			        
			       variableWidth: true,
			       slidesToShow: 2,
			       centerMode:false,
			       arrows: false,
			       dots: true
			      }
			    }
			  ]				    
			  });
	    }
    }
    
    
    if ($(".promo-event__slider").length) {
        function slideHeightAdaptive(thisSlider){
		    var maxHeight = 0;
		    
		    $(thisSlider).find('.promo-event__slide').each(function (index, el) {
		        elHeight = $(el).height();
		        if(elHeight > maxHeight) {
		            maxHeight = elHeight;
		        }
            });
            $(thisSlider).find('.promo-event__slide').each(function (index, el) {
                $(el).height(maxHeight);
            });
        };
		$(".promo-event__slider").on('init reint', function(slick){
		    slideHeightAdaptive($(this));
        });
        $(".promo-event__slider").on('afterChange', function(slick){
            slideHeightAdaptive($(this));
        });
        $(".promo-event__slider").resize(function() {
            slideHeightAdaptive($(this));
        });
        
		var promo_slider = $(".promo-event__slider").slick({
		    slidesToShow: 4,
		    slidesToScroll: 1,
		    arrows: false,
		    dots: false,
		    slide: ".promo-event__slide",
		    respondTo:'slider',
		    swipeToSlide: true,
		    swipe: true,
		    variableWidth: true,
		    touchThreshold: 25,
		    centerMode:false,
		    infinite:false,
		    adaptiveHeight:false,
		    responsive: [
			    {
                    breakpoint: 1023,
                    settings: {
                        slidesToShow: 3 
                    }
			    },
			    {
			        breakpoint: 767,
                    settings: {
                        slidesToShow: 2
                    }
			    },
			    {
			        breakpoint: 640,
                    settings: {
                        slidesToShow: 1
                    }
			    }
			 ]
		});
    }
    
    
    
    if ($(".card_viewed_block").length) {
			var sb_slider = $(".card_viewed_block").slick({
			    slidesToShow: 4,
			    slidesToScroll: 1,
			    arrows: false,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".card_viewed_block > div",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25,
			    centerMode:false,
			    responsive: [
			    {
			      breakpoint: 1023,
			      settings: {
			          slidesToShow: 3 
			      }
			    },
			    {
			      breakpoint: 767,
			      settings: {			        
			       variableWidth: true,
			       slidesToShow: 2,
			       centerMode:false,
			       arrows: false,
			       dots: false
			      }
			    }
			  ]				    
			  });
	}
   
    if ($(".card_similar_block").length) {
			var sb_slider = $(".card_similar_block").slick({
			    slidesToShow: 4,
			    slidesToScroll: 1,
			    arrows: false,
			    dots: false,
			    //autoplay: true,
			    // autoplaySpeed: 2000,
			    slide: ".card_similar_block > div",
			    respondTo:'slider',
			    swipeToSlide: true,
			    variableWidth: true,
			    touchThreshold: 25,
			    centerMode:false,
			    responsive: [
			    {
			      breakpoint: 1023,
			      settings: {
			          slidesToShow: 3 
			      }
			    },
			    {
			      breakpoint: 767,
			      settings: {			        
			       variableWidth: true,
			       slidesToShow: 2,
			       centerMode:false,
			       arrows: false,
			       dots: false
			      }
			    }
			  ]				    
			  });
	}
    
    
});

