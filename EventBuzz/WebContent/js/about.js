/**
 *  jQuery to activate tools
 */

$(function() {
    // animate on scroll
    new WOW().init();
});

$(function(){
	if($(this).scrollTop()<45) 
	{
		$('.header').removeClass("fixed-top");
	}
	else
	{
		$('.header').addClass("fixed-top");
	}
});

//Activating Magnific Popup
$(function() {
    $("#work").magnificPopup({
        delegate: 'a',
        type: 'image',
        //other options
        gallery: {
            enabled: true
        }
    });
});

// Activating Owl Carousel
$(function() {
    $("#team-members").owlCarousel({
        items: 3,
        autoplay: true,
        smartSpeed: 700,
        loop: true
    });
});
