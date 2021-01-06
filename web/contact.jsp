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
        <link rel="stylesheet" type="text/css" href="./css/Home1.css">
        <link rel="stylesheet" type="text/css" href="./css/contact.css">
      </head>
      <body>
        <div class="main">
            <nav class="navbar navbar-expand-lg bg-light navbar-light" id="firstNav">
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
                        <li class="nav-item">
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
        <div class="contact">
            <p class="contact-title">CONTACT US</p>
            <p class="title-2">Home/Contact us</p>
            
            <p class="text">We share your passion for cinema! If you have any queries or feedback regarding your experience at Moviepax,
                  our dedicated personnel will be happy to assist you.
                  Please fill out the required fields in the form and click on the submit button.
                 We assure you that all information you share with us will remain confidential.</p>
            <div class="f-form">
                <form action="Contact" method="post">
                	 <%if(request.getAttribute("feedMessage")!=null){ %>
                    <p style="color:red; padding-left:40vmin"><%=request.getAttribute("feedMessage") %></p><%} %>
                    <p class="feedback">LEAVE YOUR FEEDBACK</p>
                    <input class="form-control "  style="margin-bottom:2vmin" placeholder="Enter Your Name" name="name" required>
                    <input class="form-control"  type="email" style="margin-bottom:2vmin" placeholder="Enter Your Email ID" name="email" required>
                    <input class="form-control"  type="tel" style="margin-bottom:2vmin" placeholder="Contact Number" name="phoneNo" required>
                    <select class="form-control" style="margin-bottom:2vmin" name="subject">
                        <option>Select a Subject</option>
                        <option>Refund Request</option>
                        <option>Feedback-cinemas</option>
                        <option>General Enquiry</option>
                      </select>
                      <select class="form-control" style="margin-bottom:2vmin" name="location">
                        <option>Select a Location</option>
                        <option>Lahore</option>
                        <option>Karachi</option>
                      </select>
                      <textarea class="form-control" rows="5" style="margin-bottom:2vmin" placeholder="Your message here" name="feed"></textarea>
                      <input type="submit" value="Send" class="btn btn-success btn-block" ></input>
                     
                </form>
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
                  <a href="#">Contact US</a><br/>
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
                  <a href="https://www.youtube.com/channel/UCssMRny8Srs-moZ_R34A3dA"><img src="Usman.png" class="footer-pro" ><p class="sub">SUBSCRIBE TO CHANNEL</p></a>
                </div>
              </div>
            </div>
            
          </div>
      </body>
</html>