$(document).on('ready page:load', function(){
	$('.img-zoom').elevateZoom({
		zoomWindowWidth:100,
		zoomWindowHeight:100,
		width:330,
});
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
	$('.rated').raty( { path: '/assets',
		readOnly: true,
		score: function() { return $(this).attr('data-score');}
	});
});