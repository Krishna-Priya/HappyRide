<%
HttpSession ses = request.getSession();
String username = ses.getAttribute("username").toString();
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
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
      height: 150%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
    position: fixed;
    height: 50px;
    bottom: 0;
    width: 100%;
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
      <a href="#" class="pull-left"><img src="https://uwaterloo.ca/parking/sites/ca.parking/files/uploads/images/358546.jpg" width="50" height="50" alt="Carpool App"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.jsp">HOME</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
     <ul class="nav navbar-nav">
     <li><a href="getride.jsp">Get Ride</a></li>
     
     </ul>
    </div>
    <div class="col-sm-8 text-left"> 
     
    </div>
   
  </div>
</div>

<footer class="container-fluid text-center">
  <p>copyrights@bvrithyderabad</p>
</footer>

</body>
</html>
