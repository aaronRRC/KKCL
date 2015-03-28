// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
document.addEventListener("DOMContentLoaded", load, false);

function load(){
	//	Get the canvas from the DOM, and assign
	//	it a 2d context, which can be used to draw
	//	on the canvas
	var canvas = document.getElementById("logo");
	var context = canvas.getContext("2d");
	
	image(context);
	text(context);
}

function image(context){
	var logo = new Image();
	logo.src = "image/logo.png";
	
	logo.onload = function(){
		context.drawImage(logo,0,5,170,100);
	}
}

function text(context){
	// Add text to the canvas
	context.fillStyle = "#000";
	// Using css syntax, declare font size, style, and family
	context.font = "bold 4.5em Sans-serif";
	context.textAlign = "left";
	context.fillText("K K Custom Leather",195,65);
	
	context.font = "bold 1em Comic Sans MS";
	context.textAlign = "left";
	context.fillText("Specializing in highest quality designer belts & leather tooling at an affordable price",205,90);
}