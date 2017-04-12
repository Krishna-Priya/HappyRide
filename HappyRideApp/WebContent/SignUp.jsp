<!DOCTYPE html>
<html lang="en">
<head>
  <title>LOGIN</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
    background: url("https://cdn0.vox-cdn.com/thumbor/5YGtWArm8PSUsCkt7HILXlY1BIk=/0x0:2040x1362/1200x800/filters:focal(857x518:1183x844)/cdn0.vox-cdn.com/uploads/chorus_image/image/50164883/new-york-city-tlc-taxi-stock1_2040.0.jpg");
    background-size: 1500px 800px;
    background-repeat: no-repeat;
    padding-top: 40px;
}
</style>
</head>

<body>
<center><img src="https://uwaterloo.ca/parking/sites/ca.parking/files/uploads/images/358546.jpg" width="250" height="250" alt="Carpool App" /></center>

<div class="container">
  <div class = "row">
  <div class="col-sm-6 col-md-4 col-md-offset-4">
  
  <div class = "well">
  <h2><center>Sign Up</center></h2>
  <form role="form" action = "signup" method = "post">
    <div class="form-group">
      <label for="user">UserName:</label>
      <input type="text" class="form-control" id="user" name = username placeholder="Enter  username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" id="password" name = password placeholder="Enter password" required>
    </div>
    
    <button type="submit" class="btn btn-inverse">Sign Up</button>
   </form>
   </div>   
  </div>
</div>
</div>


</body>
</html>
