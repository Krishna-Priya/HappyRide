<%@page import = "com.bvrit.happyride.dao.DriverDAO"%>
<%@page import = "com.bvrit.happyride.dao.Driver"%>


<%@page import = "java.util.Iterator" %>
<%@page import = "java.util.ArrayList" %>
<%@page import = "javax.servlet.http.HttpSession" %>
<% 
String location = request.getParameter("location");
String end = request.getParameter("end");
 DriverDAO dd = new DriverDAO();
 ArrayList<Driver> alc = dd.getAllDrivers(location);
 int fare = dd.getFare(location,end);
 Iterator<Driver> itr = alc.iterator();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    allign: left;
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
      <div class="container">
  <div class = "row">
  <div class="col-sm-6 col-md-4 col-md-offset-4">
  <table class="table table-striped">
  <thead>




<tr>

<th>Location</th>
<th>Driver_Id</th>
<th>Capacity</th>
<th>Fare</th>

</tr>
<% 
while(itr.hasNext())
{
 Driver d = (Driver)itr.next();
%>
<tr>

<td><%=d.location%></td>

<td><%=d.driverid%></td>
<td><%=d.capacity%></td>
<td><%=fare%></td>
<td><form action = "confirmride.jsp">
<input type = "hidden" name = "location" value = <%=d.location%>>
<input type = "hidden" name = "diverid" value = <%=d.driverid%>>
<input type = "hidden" name = "diverid" value = <%=d.driverid%>>
<input type ="submit" value ="select" class="btn btn-primary"></form></td>
  
  
  <%

}

%>
 
    
    </div>
   
  </div>
</div>
</div>
</div>
<!-- <footer class="container-fluid text-center">
  <p>copyrights@bvrithyderabad</p>
</footer> -->

</body>
</html>
