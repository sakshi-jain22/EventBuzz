/**
 *  jQuery to activate tools
 */

$(function() {
    // animate on scroll
    new WOW().init();
});

//Activating Owl Caraousel for contact us
$(function(){
	$(".customers-testimonial").owlCarousel({
		animateOut: 'fadeOut',
		items:1,
		autoplay: true,
		smartSpeed: 700,
		loop: true
	});
});

// Activating counter up waypoints
$(function(){
	$('.counter').counterUp({
		delay: 50,
		time: 2000
	});
});