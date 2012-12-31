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
		},function(){
			$(this).animate({top:'0px'},'fast');
		});

	$('.smm').hover(
		function(){
			$(this).animate({left:'-43px'},'fast');
		},function(){
			$(this).animate({left:'-50px'},'fast');
	});

	$('.subscribe').click(function(){
		var vHeight = $(window).height();
		var vWidth = $(window).width();
		$form = $('#mailchimp');
		var formWidth = $form.width();
		var formHeight = $form.height();
		var offsetTop = (vHeight/2)-(formHeight/2);
		var offsetLeft = (vWidth/2)-(formWidth/2);
		// alert('TOP:' + offsetTop + 'LEFT:' + offsetLeft);
		$form.css({top:offsetTop + 'px', left: offsetLeft + 'px' });
		$('#fader').fadeIn('fast');
		$form.show();
		// $form.fadeToggle();
	});

	$('.close').click(function(){
		$(this).parent().hide();
		$('#fader').fadeOut('fast');
	})


	$('#mc-embedded-subscribe').click(function(){
		$('#mailchimp').hide();
		$('#fader').fadeOut('fast');
	})
	
});
