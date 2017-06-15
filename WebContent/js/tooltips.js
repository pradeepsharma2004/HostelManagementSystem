
/*
 * Shiny Tooltips - for jQuery 1.3+
 * http://codecanyon.net/item/shiny-tooltips/160202
 *
 * Copyright 2011, Rik de Vos
 * You need to buy a license if you want use this script.
 * http://codecanyon.net/wiki/buying/howto-buying/licensing/
 *
 * Version: 1.0.1 (Feb 16 2011)
 */

$(document).ready(function(){
	var colors = ["green","yellow","orange","red","pink","darkblue","lightblue","white"],
		tooltips="",
		tooltips_box="",
		currentTooltips=[],
		o=false;

	var tops = [],
		lefts = [];

	setVariables();
	appendTooltips();
	prepTooltips();
	hoverTooltips();
	

	function setVariables() {
		for(var t=0;t<colors.length;t++) {
			(t!==7)?tooltips=tooltips+".tooltip_"+colors[t]+", ":tooltips=tooltips+".tooltip_"+colors[t];
			(t!==7)?tooltips_box=tooltips_box+".tooltipbox_"+colors[t]+", ":tooltips_box=tooltips_box+".tooltipbox_"+colors[t];
		}
	}
	function appendTooltips() {
		$(tooltips).each(function(index){
			var $this = $(this);

			var color = $this.attr("class");
			color = color.split("_");
			color = color[1].split(" ");
			var text = $this.attr("text");

			if($this.parent().attr("href")) {
				$this.parent().parent().append('<div class="tooltipbox_'+color[0]+' currentTooltip_'+index+'" id="currentTooltip_'+index+'" style="display: none; position: absolute">'+text+'</div>');
				$this.parent().parent().append('<div class="arrow_'+color[0]+'" id="currentTooltip_'+index+'_arrow"></div>');
			}else {
				$this.parent().append('<div class="tooltipbox_'+color[0]+' currentTooltip_'+index+'" id="currentTooltip_'+index+'" style="display: none; position: absolute">'+text+'</div>');
				$this.parent().append('<div class="arrow_'+color[0]+'" id="currentTooltip_'+index+'_arrow"></div>');
			}
			
			$this.attr("tooltip", index);
			
			
		});
	}

	function prepTooltips() {
		$(tooltips_box).each(function(index){

			var $this = $(this);

			$this.html('<div class="innerText" >'+$this.html()+'</div>');

			if(typeof window.ActiveXObject == "undefined") {
				$this.append('<div class="specular_wrapper"><div class="specular"></div></div>');
			}

			$this.children(".innerText").css("overflow", "hidden");
			
			//$("img").parent($this).css("max-width", "100000000px");
			
			
			if(typeof window.ActiveXObject !== "undefined") {
				var color = $this.attr("class");
				color = color.split("_");
				color = color[1].split(" ");
				color = color[0];
				
			//	$this.parent().append('<div class="arrow_'+color+'" id="currentTooltip_'+index+'_arrow"></div>')
			}else {
				$this.append('<div class="arrow"></div>');
			}
			
			
		});
		
		$("img").parent(".innerText").parent().css("max-width", "none");
	}
	
	function colorToBackground(color, $this) {
		
		//Function for applying a background gradient if the text color is given
		
		var begin = "progid:DXImageTransform.Microsoft.gradient(startColorstr="; //Save this string for regular use below
		
		switch(color) {
			case "#47642f":
				$this.css("filter", begin+"#b0e27b, endColorstr=#6ea54b)"); //Green
				break;
			case "#62642f":
				$this.css("filter", begin+"#d3e37c, endColorstr=#9fa248)"); //Yellow
				break;
			case "#64472f":
				$this.css("filter", begin+"#e2b07b, endColorstr=#a4714a)"); //Orange
				break;
			case "#642f2f":
				$this.css("filter", begin+"#e27b7b, endColorstr=#a44a4a)"); //Red
				break;
			case "#642f62":
				$this.css("filter", begin+"#e27bcb, endColorstr=#a44a98)"); //Pink
				break;	
			case "#342f64":
				$this.css("filter", begin+"#7f7be2, endColorstr=#4a4ca4)"); //Dark blue
				break;
			case "#2f4d64":
				$this.css("filter", begin+"#7bb0e1, endColorstr=#4a7da4)"); //Light blue
				break;
			case "#585858":
				$this.css("filter", begin+"#eaeaea, endColorstr=#909191)"); //White
				break;
			default: //No default case needed
		}
	}

	function hoverTooltips() {
		$(tooltips).hover(function(){
			var $this = $(this);
			var $currentTooltip = $(".currentTooltip_"+$this.attr("tooltip"));

			var top = $this.position().top - $currentTooltip.innerHeight() - 30;
			var left = $this.position().left - 40 + $this.innerWidth()/2;
			
			var bottom = $this.position().top - 20;
			
			var arrowLeft = left+20;
			
			
			if($this.hasClass("effect_left")) {

				$currentTooltip.children(".arrow").css({
					"left" : $currentTooltip.innerWidth() - 50
				});

				left = $this.position().left + 35 - $currentTooltip.innerWidth() + $this.innerWidth()/2;
				
				//arrowLeft = arrowLeft + $currentTooltip.innerWidth() - 70;
			}
			
			if(typeof window.ActiveXObject !== "undefined") {
				if(parseFloat(navigator.appVersion.split("MSIE")[1]) == 7) {
					if(tops[$currentTooltip.attr("id")]) {
						top = tops[$currentTooltip.attr("id")];
					}else {
						tops[$currentTooltip.attr("id")] = top;
					}
					
					if(lefts[$currentTooltip.attr("id")]) {
						left = lefts[$currentTooltip.attr("id")];
					}else {
						lefts[$currentTooltip.attr("id")] = left;
					}
				}
			}
			
			$currentTooltip
				.css({
					"left" : left,
					"top" : top - 10,
					"display" : "inline",
					"width" : "auto",
					"opacity" : 0
				})
				.stop()
				.animate({
					"top" : top,
					"opacity" : 1
				}, 200, function(){
					if(typeof window.ActiveXObject !== "undefined") {
						
						//Get text color
						var textColor = $currentTooltip.css("color");
						colorToBackground(textColor, $currentTooltip);
					}
				});

			/* IE */
			if(typeof window.ActiveXObject !== "undefined") {
				$currentTooltip.children(".arrow").css("opacity", $currentTooltip.css("opacity"));
				$currentTooltip.children(".arrow").stop().animate({ "opacity" : 1 }, 200);
				
				$("#"+$currentTooltip.attr("id")+"_arrow")
					.css({
						"left" : arrowLeft,
						"top" : bottom - 10,
						"display" : "block",
						"opacity" : 0
					})
					.stop()
					.animate({
						"top" : bottom,
						"opacity" : 1
					}, 200);
			}
			

			
			
		}, function(){
			var $this = $(this);
			var $currentTooltip = $(".currentTooltip_"+$this.attr("tooltip"));

			var top = $this.position().top - $currentTooltip.innerHeight() - 30;
			
			if(typeof window.ActiveXObject !== "undefined") {
				if(parseFloat(navigator.appVersion.split("MSIE")[1]) == 7) {
					top = tops[$currentTooltip.attr("id")];
				}
			}
			
			var bottom = $this.position().top - 20;
			
			$currentTooltip.stop().animate({
					"top" : top-20,
					"opacity" : 0
				}, 500, function(){
					$currentTooltip.hide();
				});

			/* IE */
			if(typeof window.ActiveXObject !== "undefined") {
				$currentTooltip.children(".arrow").stop().animate({ "opacity" : 0 }, 500);
			
			
				$("#"+$currentTooltip.attr("id")+"_arrow")
					.stop().animate({
						"top" : bottom-10,
						"opacity" : 0
					}, 300, function(){
						$("#"+$currentTooltip.attr("id")+"_arrow").hide();
					});
			}
					
			
		});
	}
});