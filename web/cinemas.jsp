<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="./css/cinemas.css">
    <link rel="icon" type="image/gif" href="moviepics/icon.png">
    <link type="text/css" rel="stylesheet" href="magicscroll/magicscroll.css"/>
    <script type="text/javascript" src="magicscroll/magicscroll.js"></script>
    <title>Cinemas</title>
</head>
<body>
    <div class="container">
        <%@include file="header.jsp" %>
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
            <a class="navbar-brand" href="cinemas.jsp">Cinemas</a>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="karachi.jsp">Karachi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="lahore.jsp">Lahore</a>
                </li>
            </ul>
        </nav>
    </div>
</body>
</html>