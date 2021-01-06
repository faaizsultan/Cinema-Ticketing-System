<!DOCTYPE html>
<html lang="en">
<head>
  <title>Show Times</title>
  <link rel="stylesheet" href="./css/show.css">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div>
  <%@include file="header.jsp" %>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark pt-2 pb-2">
    <a class="navbar-brand" href="show.jsp">Shows</a>
    <div id="collapsibleNavbar">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" id="Monday" href="monday.jsp">Monday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Tuesday"href="tuesday.jsp">Tuesday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Wednesday" href="wednesday.jsp">Wednesday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Thursday" href="thursday.jsp">Thursday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Friday" name="Friday" href="friday.jsp">Friday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Saturday" href="saturday.jsp">Saturday</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="Sunday" href="sunday.jsp">Sunday</a>
        </li>
      </ul>
    </div>

  </nav>
</div>
</body>
</html>