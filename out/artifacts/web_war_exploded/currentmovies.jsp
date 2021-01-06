<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<%--    <link rel="stylesheet" type="text/css" href="css/cinemas.css">--%>
    <link rel="icon" type="image/gif" href="moviepics/icon.png">
    <link type="text/css" rel="stylesheet" href="magicscroll/magicscroll.css"/>
    <script type="text/javascript" src="magicscroll/magicscroll.js"></script>
    <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
            crossorigin="anonymous"></script>
    <title>Cinemas</title>
</head>
<body>
<%@include file="header.jsp" %>
        <input id="rollno" name="rollno" value="30">
        <button id="btn" onclick="getinfo()">current movies</button>
        <div id="tbl"></div>
        <script>
            let roll=document.getElementById("rollno").value;

            let getinfo=function () {
                console.log(roll);
                let url = "currentmovies";
                let page=new XMLHttpRequest();
                page.onreadystatechange=createTable;
                page.open("get",url,true);
                page.send();
            };
            let createTable=function () {
                //console.log(this.responseText);
                if (this.readyState ===4 && this.status === 200){
                    let result=this.responseText;
                    console.log(result);
                    let data= JSON.parse(result);
                    let tbl = document.createElement("table");
                    tbl.innerHTML="<tr><td>" + data.movien + "</td><td>" + data.movieimg +"</td><td>" + data.location +"</td></tr>" + data.date +"</td></tr>" + data.time +"</td></tr>" + data.goldseats +"</td></tr>" + data.silverseats +"</td></tr>";
                    let old= document.getElementById("tbl");
                    old.appendChild(tbl);
                }
            }
        </script>

        <style>
            td{
                border: 5px solid black;
            }
        </style>
<%@include file="footer.jsp" %>
</body>
</html>
