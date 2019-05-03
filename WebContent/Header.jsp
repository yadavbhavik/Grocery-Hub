<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Header Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<title>home</title>
	<link rel="stylesheet" type="text/css" href="style.css">

	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	
    <style>
		

/* STYLES SPECIFIC TO FOOTER  */
.footer {
  width: 100%;
  position: relative;
  height: auto;
  background-color: #070617;
}
.footer .col {
  width: 190px;
  height: auto;
  float: left;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  padding: 0px 20px 20px 20px;
}
.footer .col h1 {
  margin: 0;
  padding: 0;
  font-family: inherit;
  font-size: 12px;
  line-height: 17px;
  padding: 20px 0px 5px 0px;
  color: rgba(255,255,255,0.2);
  font-weight: normal;
  text-transform: uppercase;
  letter-spacing: 0.250em;
}
.footer .col ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.footer .col ul li {
  color: #999999;
  font-size: 14px;
  font-family: inherit;
  font-weight: bold;
  padding: 5px 0px 5px 0px;
  cursor: pointer;
  transition: .2s;
  -webkit-transition: .2s;
  -moz-transition: .2s;
}
.social ul li {
  display: inline-block;
  padding-right: 5px !important;
}

.footer .col ul li:hover {
  color: #ffffff;
  transition: .1s;
  -webkit-transition: .1s;
  -moz-transition: .1s;
}
.clearfix {
  clear: both;
}
@media only screen and (min-width: 1280px) {
  .contain {
    width: 1200px;
    margin: 0 auto;
  }
}
@media only screen and (max-width: 1139px) {
  .contain .social {
    width: 1000px;
    display: block;
  }
  .social h1 {
    margin: 0px;
  }
}
@media only screen and (max-width: 950px) {
  .footer .col {
    width: 33%;
  }
  .footer .col h1 {
    font-size: 14px;
  }
  .footer .col ul li {
    font-size: 13px;
  }
}
@media only screen and (max-width: 500px) {
    .footer .col {
      width: 50%;
    }
    .footer .col h1 {
      font-size: 14px;
    }
    .footer .col ul li {
      font-size: 13px;
    }
}
@media only screen and (max-width: 340px) {
  .footer .col {
    width: 100%;
  }
}
		
	</style>
	

    <style type="text/css">
    
.header { margin-top:1em; }
.menu { text-align:right; }
#mainmenu { margin:0; }
#mainmenu .btn-link { font-weight:bold; color:grey; text-decoration:none; }
#mainmenu .btn-link:hover { color: #369;  }
#mainmenu .btn-link.active { color: #369;  }
.submenu { border-top:2px solid #369; display:none; }
.submenu .btn-link,.submenu .btn-link a { font-weight:bold; color:grey; text-decoration:none; }
.submenu a .btn-link:hover { color: #369;  }
.submenu a .btn-link.active { color: #369;  }


}

	</style>

    <script type="text/javascript">$(document).ready(function() {

	  $('#mainmenu li').click(function() {
	    submenu = $(this).data('submenu');
	    $('.submenu.' + submenu).fadeToggle();
	  })

	  $("#colors li").click(function() {
	    color = $(this).data("color");
	    img = $(this).data("color-img");
	    hex = $(this).css("background-color");
	    $("#logo-display").css("background-color", color);
	    $("#product-image").attr('src', img);
	    $("#colors li span").removeClass('glyphicon-ok');
	    $(this).children('span').addClass('glyphicon-ok');
	    $("#colors li").css('box-shadow', '');
	    $(this).css('box-shadow','0 0 0 2px #eee, 0 0 0 4px '+hex);
	  });

	  $("#sizes li").click(function() {
	    $("#sizes li").removeClass('active');
	    $(this).addClass('active');
	    sizePrice = $(this).data('price');
	    if (!sizePrice) {
	      sizePrice = 0;
	    }
	    quantity = $('.quantity').val();
	    price = basePrice + sizePrice;
	    $('.price h1').text('$' + (price * quantity).toFixed(2));
	  });

	  $('#add-text').click(function(){
	    text = $(this).text();
	    if(text == 'Add Text'){
	      $(this).text('Remove Text');
	    }
	    if(text == 'Remove Text'){
	      $(this).text('Add Text');
	      $("#text-display").val('');
	    }
	  });
	  
	  $('#text-preview-submit').click(function() {
	    text = $('#text-preview-input').val();
	    $("#text-display").text(text);
	  });

	  $('#text-preview-sans').click(function() {
	    $("#text-display").css("font-family", "sans-serif");
	    $("#text-display").css("font-style", "");
	  });
	  $('#text-preview-serif').click(function() {
	    $("#text-display").css("font-family", "serif");
	    $("#text-display").css("font-style", "");
	  });
	  $('#text-preview-italic').click(function() {
	    $("#text-display").css("font-family", "serif");
	    $("#text-display").css("font-style", "italic");
	  });

	  $('#text-preview-color').click(function() {
	    color = $("#text-preview-color").data("color");
	    if (color == "black" || color == "Black" || color == "000000") {
	      $("#text-display").css("color", "white");
	      $('#text-preview-color').css("background-color", "black");
	      $('#text-preview-color').data("color", "white");
	    } else {
	      $("#text-display").css("color", "black");
	      $('#text-preview-color').css("background-color", "white");
	      $('#text-preview-color').data("color", "black");
	    }
	  });

	  $('.modal .logo').click(function() {
	    src = $(this).attr('src');
	    $('.product-options .logo').attr('src', src);
	    $('#product-logo').attr('src', src);
	    $('#logosModal').modal('hide');
	  });

	  // preview image logo placement
	  resizeLogo();
	  resizeZoomLogo();

	  var basePrice = 19.95;
	  $('.quantity').on('change', function() {
	    quantity = $(this).val();
	    sizePrice = $('#sizes ul li.active').data('price');
	    if (!sizePrice) {
	      sizePrice = 0;
	    }
	    price = basePrice + sizePrice;
	    console.log(sizePrice);
	    $('.price h1').text('$' + (price * quantity).toFixed(2));
	  })

	})

	window.onresize = function(event) {
	  resizeLogo();
	  resizeZoomLogo();
	};

	position = "left_chest";
	placement = {
	  "left_chest": {
	    "width": "9",
	    "height": "9",
	    "top": "42",
	    "left": "62",
	    "rotate": "0",
	    "skew-x": "0",
	    "skew-y": "0"
	  }
	};

	function resizeLogo() {
	  var img = document.getElementById('product-image');
	  logo = $('#product-logo');
	  var width = img.clientWidth;
	  var height = img.clientHeight;
	  logo.css('height', height * (placement[position].height / 100));
	  logo.css('width', width * (placement[position].width / 100));
	  logo.css('top', height * (placement[position].top / 100));
	  logo.css('left', width * (placement[position].left / 100));
	};


	// ZOOM ZOOM !!!

	$('.product-preview').click(function(){
	  $('.zoom-btn').toggleClass('active');
	  $(this).toggleClass('activeZoom');
	  $('.zoom-view').toggle();
	});

	$(document).on('mousemove', '.activeZoom', function(event){            
	  var relX = event.pageX - $(this).offset().left;
	  var relY = event.pageY - $(this).offset().top;
	  var relBoxCoords = "(" + relX + "," + relY + ")";
	  
	  zoomW =  $('.zoom-view').width();
	  zoomH =  $('.zoom-view').height();
	  $('.zoom-view').css('top',relY-(zoomH/2));
	  $('.zoom-view').css('left',relX-zoomW/2);

	  width = $(this).width();
	  height = $(this).height();
	  pX = (relX/width);
	  pY = (relY/height);
	  zimgW =  $('#zoom-image').width();
	  zimgH =  $('#zoom-image').height();
	  zX = (zimgW * pX)-(zoomW/1.375);
	  zY = (zimgH * pY)-(zoomH/2);
	  $('#zoom-image').css('top', '-' + zY + 'px' );
	  $('#zoom-image').css('left', '-' + zX + 'px' );
	  resizeZoomLogo();
	});

	function resizeZoomLogo() {
	  img = $('#zoom-image');
	  logo = $('#zoom-logo');
	  width = img.width();
	  height = img.height();
	  imgX = img.css('left');
	  imgY = img.css('top');
	  
	  logo.css('height', height * (placement[position].height / 100));
	  logo.css('width', width * (placement[position].width / 100));
	  logo.css('top', imgY + (height * (placement[position].top / 100)));
	  logo.css('left', imgX + (width * (placement[position].left / 100)));
	  
	  console.log(imgX);
	  console.log((width * (placement[position].left / 100)));
	  
	};
</script>	

    <style>
    /* width */
::-webkit-scrollbar {
  width: 10px;
}

/*Hide Horizontal Scroll*/
html, body {
  max-width: 100%;
  overflow-x: hidden;
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 5px;
}

/* Handle */
::-webkit-scrollbar-thumb {
  background: #343a40; 
  border-radius: 10px;
}
</style>	

<style type="text/css">
hr.style13 {
	height: 10px;
	border: 0;
	box-shadow: 0 10px 10px -10px #8c8b8b inset;
}</style>

<style type="text/css">
.fa {
  padding: 5px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  border-radius: 50%;
}</style>
</head>

<body>
<div class="container-fluid header">
  
    <div class="row">
    	<div class="col-lg-4">
      <img id="logo" src="Image/GroceryHubSmall.png">
      </div>
      <div class="col-lg-8" style="margin-top:30px"><hr class="style13"></div>
      </div>
      <div class="menu">
        <ul id="mainmenu">
        
          <li class="btn btn-link" style="font-size:25px">Home</li>
          <li class="btn btn-link" style="font-size:25px"><a href="#">About</a></li>
          <li class="active btn btn-link" data-submenu="user" style="font-size:25px">User</li>
          
        </ul>
        
        <ul class="submenu user">
          <li class="active btn btn-link" style="font-size:20px">
            <a href="Admin_login.jsp">Admin</a>
          </li>
          <li class="btn btn-link" style="font-size:20px">
            <a href="Seller_login.jsp">Seller</a>
          </li>
        </ul>
      </div>
</div>

<div class="mt-2 col-md-12"></div>
<div class="raw" style="padding:10px" >

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" >
    <div class="item active">
      <img class="rounded mx-auto d-block" src="Image/ad1.jpg" alt="ad1">
    </div>

    <div class="item">
      <img class="rounded mx-auto d-block" src="Image/ad2.jpg" alt="ad2">
    </div>

    <div class="item">
      <img class="rounded mx-auto d-block" src="Image/ad3.jpg" alt="ad3">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="mt-2 col-md-12"></div>
 		<div>
		<img src="Image\ad4.jpg" class="rounded mx-auto d-block" style="height:500px; width:1100px" alt="Other AD">
		</div>
</div>			
			
		
			
<!-- FOOTER START -->
<div class="footer">
  <div class="contain">
  <div class="col">
    <h1>Company</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
      <li>Services</li>
      <li>Social</li>
      <li>Get in touch</li>
    </ul>
  </div>
  <div class="col">
    <h1>Products</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
      <li>Services</li>
      <li>Social</li>
      <li>Get in touch</li>
    </ul>
  </div>
  <div class="col">
    <h1>Accounts</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
      <li>Services</li>
      <li>Social</li>
      <li>Get in touch</li>
    </ul>
  </div>
  <div class="col">
    <h1>Resources</h1>
    <ul>
      <li>Webmail</li>
      <li>Redeem code</li>
      <li>WHOIS lookup</li>
      <li>Site map</li>
    </ul>
  </div>
  <div class="col">
    <h1>Support</h1>
    <ul>
      
      <li>Email</li>
      <li>HelpLine NO</li>
      
    </ul>
  </div>
  <div class="col social">
    <h1>Social</h1>
    <ul>
      <li><img src="https://svgshare.com/i/5fq.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5eA.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5f_.svg" width="32" style="width: 32px;"></li>
    </ul>
  </div>
<div class="clearfix"></div>
</div>

<div style="background:#34495E; text-align: center; padding: 5px;">
<p class="cp-text" style="color:white">
    © Copyright 2019 Grocery Hub. All rights reserved.
</p> </div>
</div>
<!-- END OF FOOTER -->
			 		
</body>
</html>