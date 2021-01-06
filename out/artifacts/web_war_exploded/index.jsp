<!DOCTYPE html>
<html lang="en">
<head>
  <title>MOVIEPAX.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="./css/Home1.css">
  <script>






  </script>
</head>
<body style=" background-image: url('./cinemapics/pic11.jpg')" >
<div class="main container">
<%@include file="header.jsp"%>
<div id="demo" class="carousel slide" data-ride="carousel" >
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <li data-target="#demo" data-slide-to="2"></li>
          <li data-target="#demo" data-slide-to="3"></li>
          <li data-target="#demo" data-slide-to="4"></li>
          <li data-target="#demo" data-slide-to="5"></li>
          <li data-target="#demo" data-slide-to="6"></li>
          <li data-target="#demo" data-slide-to="7"></li>
          <li data-target="#demo" data-slide-to="8"></li>
        </ul>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="./moviepics/godfather.jpg"   >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/fandf7.jpg"  >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/theblindside.jpg"  >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/wolf.jpg" >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/3idiot.jpg"  >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/mi.jpg" >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/therevenant.jpg" >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/50sh.jpg"  >
          </div>
          <div class="carousel-item">
            <img src="./moviepics/need.jpg"  >
          </div>
        </div>
</div>
  <%@include file="footer.jsp"%>
</body>
</html>
