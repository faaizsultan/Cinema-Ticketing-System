<!DOCTYPE html>
<html>
    <head>
        <title>MOVIEPAX.com</title>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="./css/login.css">
        <link rel="stylesheet" type="text/css" href="./css/Home1.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="main">
    <nav class="navbar navbar-expand-lg bg-secondary navbar-secondary" >
    <a class="navbar-brand" id="logo" href="index.jsp">MOVIEPAX</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="login.jsp"><i class="fa fa-user-plus fa-lg mr-2"></i>SIGN UP</a>
          </li>  
            
        </ul>
      </div>
    </nav>
    <hr class="lineStyling">
    <nav class="navbar navbar-expand-lg " id="kesa">
        <div class="collapse navbar-collapse secondNav" id="collapsibleNavbar">
            <ul class="navbar-nav ">
                <li class="nav-item" >
                  <a class="nav-link customLink" href="index.jsp" >HOME</a>
                </li>  
                <li class="nav-item">
                  <a class="nav-link customLink" href="services.jsp">CINEMAS</a>
                </li>  
                <li class="nav-item">
                    <a class="nav-link customLink" href="monday.jsp">TIMESHOW</a>
                  </li>    
              </ul>
          </div> 
    </nav>
</div>
        <div class="login-page" style="margin-top:2vmin">
            <p class="login-title">LOGIN/SIGNUP</p>
            <p class="login-title-2">Home/Register</p>
            <div class="row" id="login-page">
                <div class="col-md-6" id="login-form">
                    <form action="signup" method="post">
                    <%if(request.getAttribute("error")!=null){ %>
                    <p style="color:red; "><%=request.getAttribute("error") %></p><%} %>
                        <p class="form-title">LOGIN TO YOUR ACCOUNT</p>
                        <input type="text" class="form-control" placeholder="Enter User Name" id="email" name="username" required>
                        <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="password" required>
                        <div class="row">
                            <div class="col"><div class="form-check">
                                <label class="form-check-label">
                                  <input class="form-check-input" type="checkbox" > Remember me
                                </label>
                            </div></div>
                            <div class="col"><a href="#" id="forgot-pass">Forgot Password?</a></div>
                        </div>
                        <button type="submit" class="btn btn-success btn-block">CLICK HERE TO LOGIN</button>
                        <a href="Home.jsp" class="btn btn-outline-dark btn-block">Cancel</a>
                    </form>
                </div>
                <div class="col-md-6" id="register-form">
                    <form action="login" method="post">
                        <p class="form-title">REGISTER AN ACCOUNT</p>
                        <%if(request.getAttribute("successmessage")!=null){ %>
                        <p style="color:red; "><%=request.getAttribute("successmessage") %></p><%} %>
                        <input class="form-control" id="set-margin" placeholder="Enter Your First Name" name="fname" required>
                        <input class="form-control" id="set-margin" placeholder="Enter Your Last Name" name="lname" required>
                        <input class="form-control" id="set-margin" placeholder="Enter Your User Name" name="uname" required>
                        <input class="form-control" id="set-margin" type="email" placeholder="Enter Your Email Address" name="email" required>
                        <input class="form-control" id="set-margin" type="tel" placeholder="Enter Your Mobile Number" name="mobile" required>
                        <input type="password" class="form-control" id="set-margin" placeholder="Enter password" name="pass1" required>
                        <%if(request.getAttribute("errormessage")!=null){ %>
                        <p style="color:red; "><%=request.getAttribute("errormessage") %></p><%} %>
                        <div class="form-check">
                            <label class="form-check-label">
                              <input class="form-check-input" type="checkbox" required>I Read and Agree <span style="color:red">Term & Conditions</span>
                            </label>
                        </div>
                        <input type="submit" value="CLICK HERE TO Register" class="btn btn-success btn-block" id="set-margin"></input>
                    </form>
                    
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="row">
              <div class="col">
                <p id="footer-logo">MOVIEPAX</p>
                <p style="color: white;">Moviepax 2020. All rights reserved .</p>
              </div>
              <div class="col">
                <div class="general">
                  General<br/>
                  <a href="#">About Us</a><br/>
                  <a href="#">Investors</a><br/>
                  <a href="Contact.jsp">Contact US</a><br/>
                  <a href="#">Work at Moviepax</a><br/>
                  <a href="#">Term & Conditions</a><br/>
                </div>
              </div>
              <div class="col">
                <div class="corporate">
                  Corporate<br/>
                  <a href="#">News and Events</a><br/>
                  <a href="#">Promotions</a><br/>
                  <a href="#">Group Bookings</a><br/>
                  <a href="#">News & Events</a><br/>
                  <a href="#">Advertise/Sales</a><br/>
                </div>
              </div>
              <div class="col">
                <div >
                  <a href="https://www.youtube.com/channel/UCssMRny8Srs-moZ_R34A3dA" >
                    <img src="Usman.png" class="footer-pro" title="usman's creative creations"><p class="sub">SUBSCRIBE TO CHANNEL</p></a>
                </div>
              </div>
            </div>
          </div>
    </body>
</html>