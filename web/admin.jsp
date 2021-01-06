<!DOCTYPE html>
<html>
    <head>
        <title>MOVIEPAX.com</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/admin.css">
		<script>
function validate() {
	$(document).ready(function () {
		$("#modelId").modal('show');
	});
}
function val(){
	let x = document.getElementById("usid").value;

	let y = document.getElementById("uspass").value;
	console.log(x);
	console.log(y);
	if(x=="Admin" && y=="123")
	{
 let g=document.getElementById("clsbtn");
 console.log(g);
 g.style.display='inline';
	}



}

		</script>
    </head>
    <body onload="validate()">

	<div class="text-align-center">

		<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Validation</h5>

					</div>
					<div class="modal-body">
						USer ID:<input type="text" id="usid">
						PAss:<input type="text" id="uspass">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" id="clsbtn" style="display: none" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" onclick="val()">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</div>




	<nav class="navbar navbar-expand-lg bg-info navbar-dark sticky-top" >
                <a class="navbar-brand" id="logo" href="index.jsp">Moviepax</a>
                <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse " id="collapsibleNavbar">
                    <ul class="navbar-nav ml-auto">
                    	<li class="nav-item dropdown active">
        					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
          						<i class="fa fa-edit fa-lg mr-2"></i>Update/Delete
        					</a>
        					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          						<a class="dropdown-item" href="#" id="del">Update Item</a>
          						<a class="dropdown-item" href="DeleteMovies.jsp">Delete Item</a>
          					</div>
      					</li>
                    	<li class="nav-item dropdown active">
        					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
          						<i class="fa fa-plus fa-lg mr-2"></i>	Add Item
        					</a>
        					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
          						<a class="dropdown-item" href="#" id="add-c">Add Current Item</a>
          						<a class="dropdown-item" href="#" id="add-u">Add Upcoming Item</a>
          					</div>
      					</li>
      					
                        <li class="nav-item active">
                          <a class="nav-link" href="Home.jsp"><i class="fa fa-sign-out fa-lg mr-2"></i>LOGOUT</a>
                        </li>
                      </ul>
                  </div>
              </nav>
              <nav class="navbar navbar-expand-lg bg-info navbar-dark justify-content-center" >
        			<div class="collapse navbar-collapse secondNav" id="collapsibleNavbar">
            		<ul class="navbar-nav ">
                		<li class="nav-item active" >
                  			<a class="nav-link " href="index.jsp" >HOME</a>
                		</li>  
                		<li class="nav-item active">
                  			<a class="nav-link " href="#">CINEMAS</a>
                		</li>  
                		<li class="nav-item active">
                    		<a class="nav-link " href="monday.jsp">TIMESHOW</a>
                  		</li>    
              		</ul>
          			</div> 
    			</nav>
              <div class="form" id="form1" style="display:none">
                  <form class="form-elem" method="post" action="uploadcurrentmovies">
                  	<div class="row">
                  		<div class="col">
                  			<div class="form-group">
                       		<label for="movie-name">Enter Movie Name To Add:</label>
                        	<input type="text" class="form-control" placeholder="Enter Movie" id="movie-name" name="movie">
                    </div>
                  		</div>
                  		<div class="col">
                  			<div class="form-group">
                        	<label for="cinema-name">Enter Cinema:</label>
                        	<input type="text" class="form-control" placeholder="Enter Cinema Name" id="cinema-name" name="cinema">
                   		 </div>
                  		</div>
                  	 </div>
                  	<div class="row">
                  		<div class="col">
                  			<div class="form-group">
                        	<label for="cinema-name">Enter Img Path:</label>
                        	<input type="text" class="form-control" placeholder="Enter Img Path" id="img-path" name="image">
                    </div>
                  		</div>
                  		<div class="col">
                  			 <div class="form-group">
                        	<label for="sel1">Select Day:</label>
                        	<select class="form-control" id="sel1" name="day">
                          		<option>SELECT DAY</option>
                          		<option>MONDAY</option>
                          		<option>TUESDAY</option>
                          		<option>WEDNESDAY</option>
                          		<option>THURSDAY</option>
                          		<option>FRIDAY</option>
                          		<option>SATURDAY</option>
                          		<option>SUNDAY</option>
                        	</select>
                      	</div>
                  		</div>
                  	</div>
                    <div class="row">
                    	<div class="col">
                    		 <div class="form-group">
                        	<label for="date">Enter DATE  formate(DD MM YY):</label>
                        	<input type="date" class="form-control" placeholder="Enter Date" id="date" name="date">
                    </div>
                    	</div>
                    	<div class="col">
                    		<div class="form-group">
                        	<label for="time">Enter Time  for Gold Screen formate(MM:HH AM/PM):</label>
                        	<input type="time" class="form-control" placeholder="Enter Time For Gold Screen" id="time" name="gtime">
                    	</div>
                    	</div>
                    </div>
					  <div class="row">
						  <div class="col">
							  <div class="form-group">
								  <label for="time2">Enter Time for Silver Screen formate(MM:HH AM/PM):</label>
								  <input type="time" class="form-control" placeholder="Gold Screen" id="time2" name="stime">
							  </div>
						  </div>
						  <div class="row">
							  <div class="col">
								  <div class="form-group">
									  <label for="price1">Enter Price Gold Screen :</label>
									  <input type="number" class="form-control" placeholder="Silver Screen" id="price1" name="price1">
								  </div>
							  </div>
							  <div class="col">
								  <div class="form-group">
									  <label for="price2">Enter Silver Screen Price:</label>
									  <input type="number" class="form-control" placeholder="Silver Screen" id="price2" name="price2">
								  </div>
							  </div>
						  </div>
					  </div>
                    <div class="row">
                    	<div class="col">
                    		<div class="form-group">
                        	<label for="quantity1">Enter Gold Screen Seats :</label>
                        	<input type="number" class="form-control" placeholder="Gold Screen" id="quantity1" name="gq">
                    	</div>
                    	</div>
                    	<div class="col">
                    		<div class="form-group">
                        	<label for="quantity2">Enter Silver Screen Seats :</label>
                        	<input type="number" class="form-control" placeholder="Silver Screen" id="quantity2" name="sq">
                   		 </div>
                    	</div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">ADD ITEM</button>
                  </form>
              </div>
              <div class="form" id="form2" style="display:none">
                <form class="form-elem" action="uploadupcomingmovies" method="post">
                  <div class="form-group">
                      <label for="movie-name">Enter Movie Name To Add:</label>
                      <input type="text" class="form-control" placeholder="Enter Movie" id="movie-name" name="movie">
                  </div>
                  <div class="form-group">
                      <label for="cinema-name">Enter Cinema:</label>
                      <input type="text" class="form-control" placeholder="Enter Cinema Name" id="cinema-name" name="cinema">
                  </div>
                  <div class="form-group">
                    <label for="cinema-name">Enter Img Path:</label>
                    <input type="text" class="form-control" placeholder="Enter Img Path" id="img-path" name="image">
                </div>
                  <div class="form-group">
                      <label for="date">Enter DATE  formate(DD MM YY):</label>
                      <input type="date" class="form-control" placeholder="Enter Date" id="date" name="date">
                  </div>
                  <button type="submit" class="btn btn-primary btn-block">ADD ITEM</button>
                </form>
            </div>
             <form id="custom-tab">
            	<table class="table table-borderless table-info table-striped table-hover">
            		<thead >
            			<tr >
            				<th style="text-align:center; font-size:5vmin" colspan="2">Fill Required Inputs for Movie To Update</th>
            		 	</tr>
            		</thead>
            		<tr>
            			<td><div class="form-group">
                        	<label for="movie1">Movie Name:</label>
                        	<input type="text" class="form-control" placeholder="Enter Movie Name" id="movie1" required>
                   		 </div></td>
            			<td><div class="form-group">
                        	<label for="location1">Cinema:</label>
                        	<input type="text" class="form-control" placeholder="Enter Location" id="location1" required>
                   		 </div></td>
            		</tr>
            		<tr>
            			<td colspan="2"><div class="form-group">
                        	<label for="time1">Time:</label>
                        	<input type="time" class="form-control" placeholder="Enter Time" id="time1" required>
                   		 </div></td>
            		</tr>
            		<thead >
            			<tr >
            				<th style="text-align:center; font-size:5vmin" colspan="2">Update Inputs</th>
            		 	</tr>
            		</thead>
            		<tr>
            			<td><div class="form-group">
                        	<label for="movie2">Update Movie:</label>
                        	<input type="text" class="form-control" placeholder="Enter Movie Name" id="movie2">
                   		 </div></td>
            			<td><div class="form-group">
                        	<label for="location2">Update Cinema:</label>
                        	<input type="text" class="form-control" placeholder="Enter Location" id="location2">
                   		 </div></td>
            		</tr>
            		<tr>
            			<td><div class="form-group">
                        	<label for="path">Update Image:</label>
                        	<input type="text" class="form-control" placeholder="Enter Image Path" id="path">
                   		 </div></td>
            			<td><div class="form-group">
                        	<label for="day">Update Day:</label>
                        	<select class="form-control" name="day" id="day">
                          		<option>SELECT DAY</option>
                          		<option>MONDAY</option>
                          		<option>TUESDAY</option>
                          		<option>WEDNESDAY</option>
                          		<option>THURSDAY</option>
                          		<option>FRIDAY</option>
                          		<option>SATURDAY</option>
                          		<option>SUNDAY</option>
                        	</select>
                   		 </div></td>
            		</tr>
            		<tr>
            			<td><div class="form-group">
                        	<label for="time2">Update Gold Time:</label>
                        	<input type="time" class="form-control" placeholder="Enter Time For Gold Screen" id="time2">
                   		 </div></td>
            			<td><div class="form-group">
                        	<label for="day">Update Date:</label>
                        	<input type="date" class="form-control" placeholder="Enter Date" id="date2" name="date2">
                   		 </div></td>
            		</tr>
					<tr>
						<td>
							<div class="form-group">
							<label for="time2">Update Silver Time:</label>
							<input type="time" class="form-control" placeholder="Enter Time For Silver Screen" id="time3">
							</div>
						</td>
						<td>
							<div class="form-group">
								<label for="price1">Update Silver Price:</label>
								<input type="number" class="form-control" placeholder="Enter Price" id="price3">
							</div>
						</td>
					</tr>
            		<tr>
            			<td><div class="form-group">
                        	<label for="gs">Update Quantity for Gold Screen:</label>
                        	<input type="number" class="form-control" placeholder="Enter Quantity for Gold Screen" id="gs">
                   		 </div></td>
            			<td><div class="form-group">
                        	<label for="ss">Update Quantity for Silver Screen:</label>
                        	<input type="number" class="form-control" placeholder="Enter Quantity for Silver Screen" id="ss">
                   		 </div></td>
            		</tr>
            		<tr>
            			<td>
            				<button class="btn btn-primary btn-block" type="submit" onclick="updatewe()">UPDATE</button>
            			</td>
            			<td>
            				<a class="btn btn-warning btn-block">DELETE!</a>
            			</td>
            		</tr>
            	</table>
            	</form>
              <script type="text/javascript">
                   const addCurrent=document.getElementById("add-c");
                   const form1=document.getElementById("form1");
                   const form2=document.getElementById("form2");
                   const table= document.getElementById("custom-tab");
                   addCurrent.addEventListener("click",function(){
                        if(form2.style.display=="block")
                        {
                            form2.style.display="none";
                        }
                        if(table.style.display=="block")
                        {
                            table.style.display="none";
                        }
                        if(form1.style.display=="block"){
                        	form1.style.display="none";
                        }
                        else{
                        	form1.style.display="block";	
                        }
                   })
                   const addUp=document.getElementById("add-u");
                   addUp.addEventListener("click",function(){
                        if(form1.style.display=="block")
                        {
                            form1.style.display="none";
                        }
                        if(table.style.display=="block")
                        {
                            table.style.display="none";
                        }
                        if(form2.style.display=="block"){
                        	form2.style.display="none";
                        }
                        else{
                        	form2.style.display="block";	
                        }
                   })
                   const del=document.getElementById("del");
                   del.addEventListener("click",function(){
                	   if(form2.style.display=="block")
                       {
                           form2.style.display="none";
                       }
                	   if(form1.style.display=="block")
                       {
                           form1.style.display="none";
                       }
                	   if(table.style.display=="block"){
                       	table.style.display="none";
                       }
                       else{
                       	table.style.display="block";	
                       }
                   })
                   function updatewe(){
                	    var m1=document.getElementById("movie1").value;
                	    var c1=document.getElementById("location1").value;
                	    var t1=document.getElementById("time1").value;
                	    var m2=document.getElementById("movie2").value;
                	    var c2=document.getElementById("location2").value;
                	    var path=document.getElementById("path").value;
                	    var day=document.getElementById("day").value;
                	    var t2=document.getElementById("time2").value;
                	    var dat=document.getElementById("date2").value;
                	    var gold=document.getElementById("gs").value;
                	    var silver=document.getElementById("ss").value;
                	    var price=document.getElementById("price3").value;
					   var t3=document.getElementById("time3").value;
						var url="newOne?movie1="+m1+"&location1="+c1+"&time1="+t1+"&movie2="+m2+"&location2="+c2+"&path="+path+"&day="+day+"&date2="+dat+"&time2="+t2+"&gs="+gold+"&ss="+silver+"&price3="+price+"&time3="+t3;
						var httpxml=new XMLHttpRequest();
						httpxml.onreadystatechange=function(){
							if(this.readyState==4 && this.status==200){
							console.log(this.responseText);
							}
						}	
						httpxml.open("get",url,true);
						httpxml.send();
					}
              </script>
    </body>
</html>