
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
    
});

