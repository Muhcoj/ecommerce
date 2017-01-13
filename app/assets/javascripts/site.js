var refreshRating = function() {
	$('.rating').raty( { path: '/images', scoreName: 'comment[rating]' });
	
	$('.rated').raty({ path: '/images',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	});
};

$(document).on('turbolinks:load ajaxSuccess', function(){
	
	refreshRating();
	
	//A jQuery image zoom plugin
	$('.img-zoom').elevateZoom({
  	zoomType: "inner",
  	cursor: "crosshair"
	});
});