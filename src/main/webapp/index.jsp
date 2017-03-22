<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }
        /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
        .row.content {height: 450px}
        /* Set gray background color and 100% height */
        .sidenav {
            padding-top: 20px;
            background-color: #f1f1f1;
            height: 100%;
        }
        /* Set black background color, white text and some padding */
        footer {
            background-color: #555;
            color: white;
            padding: 15px;
        }
        /* On small screens, set height to 'auto' for sidenav and grid */
        @media screen and (max-width: 767px) {
            .sidenav {
                height: auto;
                padding: 15px;
            }
            .row.content {height:auto;}
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/index.jsp">NEW GAME</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
        </div>
    </div>
</nav>

<div class="container">
    <div class="alert alert-success">
            <c:out value="${msg}"/>
        </div>
    <div class="row">
        <form class="form-signin" action="/speeding" method="post">
            <h2 class="form-signin-heading" align="center">SLOW DOWN!! POLICE REPORTED AHEAD</h2>
            <h4 class="form-signin-heading" align="center">On a 60MPH Speed limit, how fast do you usually go?</h4>
            <label class="sr-only">Actual Speed</label>
            <input type="number" id="speed" class="form-control" placeholder="Speed" name="speed" required/>
            <h4 class="form-signin-heading" align="center"></h4>
                <label class="control-label col-sm-3">Is it your birthday?</label>
                <div class="col-sm-offset-3 checkbox">
                    <label><input type="checkbox" name="bDay" value="true">YES</label>
                </div>
                <br>
            <div class="col-sm-offset-3 col-sm-6">
                <button class="btn btn-lg btn-primary btn-block" type="submit">PLAY</button>
            </div>
        </form>
    </div>
    <div class="alert alert-success">
        <c:out value="${msg1}"/>
    </div>
    <div class="row">
        <form class="form-signin" action="/sortaSum" method="post">
            <h2 class="form-signin-heading" ALIGN="CENTER">SUM-SOMETIMES</h2>
            <label for="inputEmail" class="sr-only">username</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="First Number" name="first" required/>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="text" id="displayname" class="form-control" placeholder="Second Number" name="second" required/>
            <br>
            <div class="col-sm-offset-3 col-sm-6">
                <button class="btn btn-lg btn-primary btn-block" type="submit">PLAY</button>
            </div>
        </form>
    </div>
    <div class="alert alert-success">
        <c:out value="${msg2}"/>
    </div>
    <div class="row">
        <form class="form-signin" action="/blackjack" method="post">
            <h2 class="form-signin-heading" align="center">BLACKEN'JACKEN</h2>
            <div class="form-group">
                <label class="control-label col-sm-6" for="dealers">Dealers:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="dealers" name="dealer" placeholder="Enter the dealers cards seperated by comma" required/>
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label col-sm-6" for="players">Players:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control" id="players" name="player" placeholder="Enter the players cards seperated by comma" required/>
                </div>
            </div>
            <br>
            <div class="col-sm-offset-3 col-sm-6">
                    <button class="btn btn-lg btn-primary btn-block" type="submit">PLAY</button>
            </div>
        </form>
    </div>
</div>
<br>
<br>
<br>
<br>
<footer class="container-fluid text-center">
    <p>Wagners Web App</p>
</footer>

</body>
</html>