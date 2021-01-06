<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./css/show.css">
    <link rel="icon" type="image/gif" href="./moviepics/icon.png">
    <link type="text/css" rel="stylesheet" href="magicscroll/magicscroll.css"/>
    <script type="text/javascript" src="magicscroll/magicscroll.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <title>Friday</title>
</head>
<body>
<%@include file="show.jsp" %>
<div style="background-image: url('./cinemapics/pic11.jpg')" class="container">
    <div id="movie"></div>
    <div id="modal"></div>

</div>
<button id="abc">
    <script>this.id</script>
</button>
<script>
    var data,i,data1,mname,mloc,mtime;
    function showForm(mname1,mtime1,mloc1,data2,type) {
        console.log(mname1);
    let m=document.getElementById("apd");
    let n=document.createElement("div");
        console.log(mtime1);
        console.log(mloc1);
        console.log(data2);
        console.log(type);

    n.innerHTML="<form action=\"storeData\"><div class=\"form-group\"><label>Movie Name</label><input type=\"text\" class=\"form-control\" id=movien name=\"moviename\"  value=\mname1\><label>"+"Movie Time"+"</label><input type=\"text\" class=\"form-control\" id=\"moviet\" name=\"movietime\" aria-describedby=\"emailHelp\" value=mtime1.innerText><label>"+"Movie Location"+"</label><input type=\"text\" class=\"form-control\" id=\"movieloc\" name=\"location\" aria-describedby=\"emailHelp\" value=\"mloc1\"><label>"+"No of tickets you want:"+"</label><input type=\"text\" class=\"form-control\" name=\"totalseats\" aria-describedby=\"emailHelp\" value=\"data2\"><label>"+"Type of your seat:"+"</label><input type=\"text\" class=\"form-control\" id=\"req\" name=\"sttype\" aria-describedby=\"emailHelp\" value=\"type\"><label>"+"Enter your username"+"</label><input type=\"text\" class=\"form-control\" id=\"userid\" name=\"id\" aria-describedby=\"emailHelp\" value=\"\"><label>"+"Enter your paasword"+"</label><input type=\"text\" class=\"form-control\" id=\"password\" name=\"pass\" aria-describedby=\"emailHelp\" value=\"\"><button type=\"submit\" class=\"btn btn-primary\">"+"Confirm"+"</button></form>";
    m.appendChild(n);
    }

    var verifyTickets=function(tickets){
        var userRequirment = document.getElementById('inputTickets').value;
        let error1 = document.getElementById('error');
        console.log(tickets);
        console.log(userRequirment);
        error1.innerText="";
        if (userRequirment < tickets) {
             error1.innerText="Your requirment is out of range!!!";
         }
        else{
            let x=document.getElementById('regbtn');
            x.style.display="block";
        }
    }
    let gbTicket=function(btnclass){
        mname=document.getElementsByClassName(btnclass)[1].innerText;
        mloc=document.getElementsByClassName(btnclass)[0].innerText;
        mtime=document.getElementsByClassName(btnclass)[2].innerText;
        let url = "checkTickets?mn="+mname+"&l=" +mloc+ "&t=" +mtime+ "&type=gold";
        let page = new XMLHttpRequest();
        page.onreadystatechange = displayMovieTickets;
        page.open("get", url, true);
        page.send();
        function displayMovieTickets() {
            if (this.readyState === 4 && this.status === 200) {
                let result = this.responseText;
                data1= JSON.parse(result);
                console.log(result);
                let a=document.createElement("div");
                $(document).ready(function(){
                    $("#myModal").modal('show');
                });
                a.innerHTML="<div id=\"myModal\" class=\"modal fade\"><div class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-header\"><h1 class=\"modal-title\">"+"MoviePax"+"</h1></div><div class=\"modal-body\"><p>Total Tickets Avaiable for the Movie are:"+data1.seats+"</p><p>"+"Write the amount of tickets you want."+"</p><form action='checkTickets'><div class=\"form-group\"><input id=\"inputTickets\" type=\"text\" class=\"form-control modalClass\" placeholder=\"Tickets\" name='inputTicketsName'></div><div id=\"apd\"><p id=\"error\"></p><button type='button' onclick='verifyTickets(data1.seats)' class=\"btn btn-primary modalClass\">Done</button><button type='button' id=\"regbtn\"  onclick='showForm(mname,mtime,mloc,data1.seats,\"gold\")' style=\"display: none\" class=\"btn btn-primary mt-2\">Register</button></div></div></div></div></div></form>";
                let b=document.getElementById("modal");
                b.appendChild(a);
            }
        }
    }
    let sbTicket=function(btnclass){
        mname=document.getElementsByClassName(btnclass)[1].innerText;
        mloc=document.getElementsByClassName(btnclass)[0].innerText;
        mtime=document.getElementsByClassName(btnclass)[3].innerText;
        let url = "checkTickets?mn="+mname+"&l=" +mloc+ "&t=" +mtime+ "&type=silver";
        let page = new XMLHttpRequest();
        page.onreadystatechange = displayMovieTickets;
        page.open("get", url, true);
        page.send();
        function displayMovieTickets() {
            if (this.readyState === 4 && this.status === 200) {
                let result = this.responseText;
                data1= JSON.parse(result);
                console.log(result);
                let a=document.createElement("div");
                $(document).ready(function(){
                    $("#myModal").modal('show');
                });
                a.innerHTML="<div id=\"myModal\" class=\"modal fade\"><div class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-header\"><h1 class=\"modal-title\">"+"MoviePax"+"</h1></div><div class=\"modal-body\"><p>Total Tickets Avaiable for the Movie are:"+data1.seats+"</p><p>"+"Write the amount of tickets you want."+"</p><form action='checkTickets'><div class=\"form-group\"><input id=\"inputTickets\" type=\"text\" class=\"form-control modalClass\" placeholder=\"Tickets\" name='inputTicketsName'></div><div id=\"apd\"><p id=\"error\"></p><button type='button' onclick='verifyTickets(data1.seats)' class=\"btn btn-primary modalClass\">Done</button><button type='button' id=\"regbtn\"  onclick='showForm(mname,mtime,mloc,data1.seats,\"gold\")' style=\"display: none\" class=\"btn btn-primary mt-2\">Register</button></div></div></div></div></div></form>";
                let b=document.getElementById("modal");
                b.appendChild(a);
            }
        }
    }
    let displayMovieInfo = function () {
        if (this.readyState === 4 && this.status === 200) {
            let result = this.responseText;
            data = JSON.parse(result);
            let old = document.getElementById("movie");
            old.innerHTML="";
            for(i in data) {
                let movie = document.createElement("div");
                movie.innerHTML= "<style>img:hover{-ms-transform:scale(1.2);-webkit-transform: scale(1.2);transform: scale(1.2);transition: transform .8s;}</style><div class=\"row mainDiv\"><div class=\"col-4\"><div class=\"card text-center\" ><div class=\"card-body\" style=\"background-image: url(\"./cinemapics/pic1.jpg\")><img class=\"card-img-top rounded\" style=\"height: 30vw; width: 25vw;\" src=\"./moviepics/wolf.jpg\" alt=\"Movie Pic\"><hr><span class=\"card"+i+"\" style=\"background-color: darkgoldenrod; color: black; width: 20vw; height: 4vw; font-size: 2vw; border-radius: 5%;\">"+ data[i].loc + "</span></div></div></div><div class=\"col text-center pt-5\"\"><h1 id=\"moviename\"style=\"height:10vh;background-color:black; color: white; font-size: 2.5vw; font-family: Comamonadacea; padding-top: 2vh;\" class=\"rounded-pill card"+i+"\">"+data[i].movien+"</h1><div class=\"row pt-5\"><div class=\"col-2\"><button style=\"font-size: 2vw;\" class=\"btn btn-warning\">"+ "Gold"+"</button><button onclick=\"gbTicket(this.className)\"  name=\"gt\" id=\"goldbtn"+i+"\" style=\"background-color: transparent;margin-top: 20%;font-size: 1.5vw; height: 10vh; color: white;\" class=\"card"+i+"\">"+ data[i].gt +"</button></div><div class=\"col-2\"><button style=\"font-size: 2vw;\" class=\"btn btn-secondary\">"+ "Silver"+"</button><button onclick=\"sbTicket(this.className)\" id=\"silverbtn"+i+"\" name=\"silt\" style=\"background-color: transparent; margin-top:20%;font-size: 1.5vw;height: 10vh; color: white;\" class=\"card"+i+"\">"+ data[i].silt +"</button></div></div></div></div>";
                old.appendChild(movie);
            }
        }
    }
         let url = "currentmovies?mDay=Friday";
         let page = new XMLHttpRequest();
         page.onreadystatechange = displayMovieInfo;
         page.open("get", url, true);
         page.send();
</script>
</body>
</html>