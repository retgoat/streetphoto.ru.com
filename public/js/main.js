$(document).ready(function(){
	
	$('.bullet').click(function(){
		$('.bullet').removeClass('active-bullet');
		$(this).addClass('active-bullet');
		
		var im = $(this).attr('data-image');
		var image = $('#slider').find('img');
		var new_src = '../img/slider/' + im + '.jpg';

		image.fadeOut('slow', function(){
			image.attr('src',new_src);
			image.fadeIn('slow');
		});
	});

	//Links to sicial profiles of the Photographers
	$('.social').hover(
		function(){
			$(this).animate({top:'-3px'},'fast');
		},
		function(){
			$(this).animate({top:'0px'},'fast');
		});

	//Active menu item
})
