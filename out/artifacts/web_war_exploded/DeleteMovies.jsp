
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script>
function runfun(){
//console.log("abc");
var url="FetchAllMovies"
var data,i,result;
var page=new XMLHttpRequest();
page.onreadystatechange=displayMovieInfo;
page.open("GET",url,true);
page.send();
}
var displayMovieInfo = function () {
	var movieid=1;
        if ((this.readyState == 4) && (this.status == 200)) {
            var res = this.responseText;
           data=JSON.parse(res);
            for(i in data) {
            	console.log(i);
                let rcomp= "<tr><th scope=\"row\">"+movieid+"</th><td>"+data[i].moviename+"</td><td>"+data[i].location+"</td><td>"+data[i].date+"</td><td>"+data[i].goldseats+"</td><td>"+data[i].silverseats+"</td><td>"+data[i].goldtime+"</td><td>"+data[i].silvertime+"</td><td><button id="+i+" class=\"btn btn-primary\" onclick=deleteMovie(this.id)>"+"Delete"+"</button></td></tr>";
                
                
                
                let movie = document.createElement("tr");
                movie.innerHTML= rcomp;
                let old = document.getElementById("tablebody");
                old.appendChild(movie);     
                movieid++;
            }
        }
}
var deleteMovie =function(ide){

	//console.log(ide);
	var x=document.getElementById(ide);
	var moviename=x.parentNode.parentNode.children[1].innerText;
	//console.log(moviename);
	//console.log(x.parentNode.parentNode);
	var page=new XMLHttpRequest();
	var delmovie="deleteMovie?mn="+moviename;
	//console.log(delmovie);
	page.onreadystatechange=backservlet;
	page.open("GET",delmovie,true);
	page.send();
	
	x.parentNode.parentNode.parentNode.removeChild(x.parentNode.parentNode);
}
var backservlet=function(){
	if ((this.readyState == 4) && (this.status == 200)) {
        var bb = this.responseText;

	}
}

 </script>
</head>
<body onload="runfun()">
<div>

        <div class="p-5">
    <table class="table table-borderless table-info table-striped table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Movie Name</th>
            <th scope="col">Location</th>
            <th scope="col">Date</th>
            <th scope="col">Gold Seats</th>
            <th scope="col">Silver Seats</th>
            <th scope="col">Gold  Time</th>
            <th scope="col">Silver Time</th>
            <th scope="col"></th>
          </tr>
        </thead>
        <tbody id="tablebody">
        </tbody>
        </table>
        </div>
        </div>
</body>
</html>