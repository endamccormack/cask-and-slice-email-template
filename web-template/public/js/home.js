// $(document).ready(function(){
// 	var height = $(window).height();
// 	var headerHeight = height - $("nav").height();
// 	$('#headerImage').css("height", headerHeight + "px");
// })

$(document).ready(function(){
	//$.browser.device = (/android|webos|iphone|ipad|ipod|blackberry|iemobile|opera mini/i.test(navigator.userAgent.toLowerCase()));

	if (!Modernizr.touch) {
	  $('#headerImageContainer').css("left", -2000);
		$('#headerTextContainer').hide();

		$('#headerTextContainer').fadeIn(1500, function() {
			//$('#headerHandContainer').fadeIn(500);

		});
		$('#headerImageContainer').animate({left: 0}, 2500);
	}



})

function toggleOverlay(){
  var overlay = document.getElementById('overlay');
  var specialBox = document.getElementById('specialBox');
  var iframe = document.getElementsByTagName("iframe")[0].contentWindow;
  overlay.style.opacity = .8;
  if(overlay.style.display == "block"){
    overlay.style.display = "none";
    specialBox.style.display = "none";
    iframe.postMessage('{"event":"command","func":"' + 'pauseVideo' + '","args":""}', '*');
  } else {
    overlay.style.display = "block";
    specialBox.style.display = "block";
    iframe.postMessage('{"event":"command","func":"' + 'playVideo' + '","args":""}', '*');
  }
}
