/*
	
		function loadContent(id) {
			$("#ajaxloading").fadeIn(100);
			$("#mainContent").load("includes/pager.php?o="+id+"");
			$("#ajaxloading").fadeOut(1000);
		}*/




$(document).ready(function() {	

$.history.init(pageload); 
$('a[href=' + window.location.hash + ']').addClass('selected');
$('a[rel=ajax]').click(function () {
   var hash = this.href;
   hash = hash.replace(/^.*#/, '');
   $.history.load(hash);
   getPage();
   return false;
 });

$('#slider').nivoSlider({
        effect:'fade', 
				// Specify sets like:'fold,fade,sliceDown,sliceDownLeft,sliceUp,sliceUpLeft,sliceUpDown,sliceUpDownLeft,random,slideInRight,
							       // slideInLeft,boxRandom,boxRain,boxRainReverse,boxRainGrow,boxRainGrowReverse'
        slices:15, // For slice animations
        boxCols: 8, // For box animations
        boxRows: 4, // For box animations
        animSpeed:1000, // Slide transition speed
        pauseTime:4000, // How long each slide will show
        startSlide:0, // Set starting Slide (0 index)
        directionNav:true, // Next & Prev navigation
        directionNavHide:true, // Only show on hover
        controlNav:false, // 1,2,3... navigation
        controlNavThumbs:false, // Use thumbnails for Control Nav
        controlNavThumbsFromRel:false, // Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', // Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', // ...this in thumb Image src
        keyboardNav:true, // Use left & right arrows
        pauseOnHover:true, // Stop animation while hovering
        manualAdvance:false, // Force manual transitions
        captionOpacity:0.8, // Universal caption opacity
        prevText: 'Prev', // Prev directionNav text
        nextText: 'Next', // Next directionNav text
        beforeChange: function(){}, // Triggers before a slide transition
        afterChange: function(){}, // Triggers after a slide transition
        slideshowEnd: function(){}, // Triggers after all slides have been shown
        lastSlide: function(){}, // Triggers when last slide is shown
        afterLoad: function(){} // Triggers when slider has loaded
    });


});
/*------------------------------------Hash URL Loader Starts----------------*/
function pageload(hash) {
                if (hash) getPage();
        }
 
        function getPage() {
                var data = 'page=' + encodeURIComponent(document.location.hash);
                $.ajax({
                        url: "page_loader.jsp",
                        type: "GET",
                        data: data,
                        cache: false,
                        success: function (html) {
                                $('#mainContent').hide();
                                //$('#mainContent').fadeOut('slow');
                                $('#mainContent').html(html).fadeIn('slow');
                                $('#mainContent').fadeIn('slow');
                        }
                });
        }


/*------------------------------------Hash URL Loader Ends----------------*/

