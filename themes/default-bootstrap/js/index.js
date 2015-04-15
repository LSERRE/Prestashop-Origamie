/*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/

$(document).ready(function(){
	$('#home-page-tabs li:first, #index .tab-content ul:first').addClass('active');

	/* DRAW SVG */
	var current_frame = 0;
	var total_frames = 1300;
	var path = new Array();
	var length = new Array();

	for(var i = 0; i < 2; i++){
	  path[i] = document.getElementById('path-'+i);
	  l = path[i].getTotalLength();
	  length[i] = l;
	  path[i].style.strokeDasharray = l + ' ' + l; 
	  path[i].style.strokeDashoffset = l;
	}
	var handle = 0;

	function draw() {
	  var progress = current_frame / total_frames;
	  if (progress > 1) {
	  	window.cancelAnimationFrame(handle);
	  } else {
	    current_frame++;
	    for(var j = 0; j < path.length; j++){
	    path[j].style.strokeDashoffset = Math.floor(length[j] * (1 - progress));
	  }
	  handle = window.requestAnimationFrame(draw);
	  }
	};

	window.addEventListener("load", function(){
	  draw();
	  setTimeout(function(){
			document.getElementById('logo').classList.add('show');  
			document.querySelector('.loader span').classList.add('show'); 
	  }, 1000);
	  setTimeout(function(){
			document.querySelector('body').classList.add('hideLoader');
			$('.loader').delay(500).hide();
	  }, 3000);
	}, false);

});