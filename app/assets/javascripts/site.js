$(document).on('turbolinks:load', function(){
	
	$('.rating').raty( { path: '/images', scoreName: 'comment[rating]' });
	
	$('.rated').raty({ path: '/images',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
	
	//A jQuery image zoom plugin
	$('.img-zoom').elevateZoom({
  	zoomType: "inner",
  	cursor: "crosshair"
	});
});