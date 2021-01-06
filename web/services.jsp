<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Our Services</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/pnewstyle.css" type="text/css">
    <link rel="icon" type="image/gif" href="./moviepics/icon.png" />
    <link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet">
</head>


<style>
body
{
    background-image: url("./cinemapics/pic4.jpg");
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    font-family: 'Courgette', cursive !important;
    padding: 0;
    margin: 0;
}
.bg-img
{
    background-position:center;
    background-repeat:no-repeat;
    background-size:cover;
    background-attachment: fixed;
    
}

.textOverImage{
    border: 1px solid rgb(214, 211, 211);
    border-radius: 30px;
    /*padding: 30px;*/
    position:relative;
    height: 300px;
    width: 300px;
    float:left;
    margin:4px;
    background-size:100%;
    background-position:center;
    transition:0.5s;
  }
  
  .textOverImage:hover{
    background-size:110%;
  }
  
  .textOverImage:after{
      border: 1px solid rgb(214, 211, 211);
      border-radius: 30px;
      padding: 30px;
    position:absolute;
    top:85%;
    bottom:0;
    left:0;
    right:0;
    white-space: pre-wrap;
    overflow:hidden;
    background-color:rgba(0,0,0,1);
    color:#fff;
    padding:0 8px;
    content:attr(data-text);
    font-weight: bold;

  }
  
  .textOverImage:hover:after{
    top:0;
    text-align: center;
    padding:8px;
    background-color:rgba(0,0,0,0.5);
    font-weight: bold;
  }
  
  .textOverImage:first-line{
    color:#fff;
    font-weight:bold;
    font-size:1.5em;
    text-align: center;
    margin-top: 5%;
  }
.row {
    justify-content: center;
}
</style>

<body style="background-image: url('./cinemapics/pic11.jpg')">
<%@include file="header.jsp"%>
        <h1 class="font-weight-bold text-center text-white">THE BEST THAT SUITS YOUR NEEDS</h1>



<div class="container-fluid text-center">
    <div class="row ">
        <div class="textOverImage text-center col-sm-6 col-md-4 col-lg-3  " style="background-image: url('./cinemapics/pic8.jpg')" data-text="Canteen

All you need to know about our economy class buses:
• Air-conditioned Seatings
• Hygenic Food
• Waiterss

	">
	
        </div>

        <div class="textOverImage col-sm-6 col-md-4 col-lg-3 text-center " style="background-image: url('./cinemapics/pic9.jpg')" data-text="Parkings

Our parking has:
• Marked Spaces.
• Invigilation Cameras.
• Secuity Barriers.
	">
        </div>
        <div class="textOverImage col-sm-6 col-md-4 col-lg-3 text-center  " style="background-image: url('./cinemapics/pic1.jpg')" data-text="Halls

Add comfort to your journey by traveling through our luxury buses equipped with:
• Comfortable and spacious seats.
• Latest audio visual technologies.
• 100 Seats
	">
        </div>
        </div>
        <div class="container mt-3">
        <div class="row rounded-pill text-center bg-primary">
                <div class="col-6">
                Address
                </div>
        </div>
        <div class="row rounded-pill text-center">
        <div class="col-12">
            <strong style="color: crimson">Anar Kali Lahore.</strong>
        </div>

        </div>
        </div>
</div>


</body>
</html>