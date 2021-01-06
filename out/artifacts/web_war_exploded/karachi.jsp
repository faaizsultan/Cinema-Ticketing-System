<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/karachi.css">
    <link rel="icon" type="image/gif" href="icon.png">
    <link type="text/css" rel="stylesheet" href="magicscroll/magicscroll.css"/>
    <script type="text/javascript" src="magicscroll/magicscroll.js"></script>
    <title>Cinemas</title>
</head>
<body>
<div style="background-color: white"  class="container">
    <%@include file="cinemas.jsp"%>
        <div class="row">
            <div class="col-4 blurred-bg">
                <span style="font-size: 2vw; font-family: cursive;" >Karachi Mall</span><hr>
                <span style="font-size: 1.5vw;">
                    Karachi MALL - Lahore
                    Moviepax Karachi Mall, 4th Floor
                    II Talwar, Karachi - Pakistan
                    <hr>
                    UAN: (001) 123-Moviepax (456 789)
                    <br/>
                    * Local call charges apply
                    <hr>
                    Email: contact@moviepax.com
                </span>
            </div>
            <div class="col-8 pb-2">
                <div class="MagicScroll" data-options="step: 1; speed: 400;">
                    <img src="./cinemapics/pic2.jpg" />
                    <img src="./cinemapics/pic7.jpg" />
                    <img src="./cinemapics/pic8.jpg" />
                </div>
                Pictures of Moviepax Karachi Mall...
            </div>
        </div>
        <div class="row">
            <div class="col-6">
                <hr><span style="font-size: 2vw; font-family: cursive;" > Fascilities...</span><hr>
                <ul><br>
                    <span style="font-size: 1.5vw;">
                        <li>Car Parking</li>
                        <li>Wheel Chair</li>
                        <li>Dining</li>
                        <li>3D Glasses</li>
                        <li>Cafe</li>
                    </span>
                </ul>
            </div>
            <div class="col-6">
                <hr><a class="text-dark pt-5" href="https://www.google.com/maps/place/Karachi,+Karachi+City,+Sindh,+Pakistan/@25.1933895,66.5949487,9z/data=!3m1!4b1!4m5!3m4!1s0x3eb33e06651d4bbf:0x9cf92f44555a0c23!8m2!3d24.8607343!4d67.0011364" frameborder="0">
                    <span style="font-size: 2vw;">*Location of the Karachi Mall </span> </a><hr>
            </div>
        </div>
    <%@include file="footer.jsp" %>
    </div>
</body>
</html>