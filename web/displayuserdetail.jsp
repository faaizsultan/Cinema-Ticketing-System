<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MOVIEPAX.com</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-img:url('showpic.jpg')">
<p style="font-weight:bold;text-align:center;font-size:7vmin;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">Here is detail for you</p>
<input placeholder="Type your Username to see your details..." id="usr"/>
<button class="btn btn-success" onclick="update()">See Details</button>
<a class="btn btn-success" href="index.jsp">Go to Home</a>
<div id="tablee" class="container"></div>
	<script>
	function update(){
	    // var m1=document.getElementById("username").value;
        var m1=document.getElementById("usr").value;
		var url="displayuserdetail?username="+m1;
		var httpxml=new XMLHttpRequest();
		httpxml.onreadystatechange=function(){
			if(this.readyState==4 && this.status==200){
				let result = this.responseText;
				
	            data = JSON.parse(result);
	            let detail = document.createElement("div");
	            detail.innerHTML="<table class=\"table table-borderless table-info table-striped table-hover\"><tr><th>"+" Name "+"</th>"+"<td>"+data.UserName+"</td></tr>"+
	            "<tr><th>"+" Movie Name "+"</th>"+"<td>"+data.MovieName+"</td></tr>"+
	            "<tr><th>"+" Ticket "+"</th>"+"<td>"+data.Type+"</td></tr>"+
	            "<tr><th>"+" Quantity "+"</th>"+"<td>"+data.TicketsCount+"</td></tr>"+
	            "<tr><th>"+" Time "+"</th>"+"<td>"+data.Time+"</td></tr></table>";
	            document.getElementById("tablee").appendChild(detail);
			}
		}	
		httpxml.open("get",url,true);
		httpxml.send();
	}
	</script>
</body>
</html>