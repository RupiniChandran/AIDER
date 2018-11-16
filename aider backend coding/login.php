<?php include('connection.php')?>
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <title>Login </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="icon" type="image/x-icon" href="favorite.ico">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </head>
  <body class="bg-info">
    <nav class="navbar navbar-expand-md bg-dark navbar-dark">

        <img src="logoicon2.png" alt="Logo" style="width:40px;">
        <a class="navbar-brand" href="index.php">AIDER</a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigationbarcollapses">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navigationbarcollapses">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ServiceList.php">Services</a>
          </li>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.php">Login</a>
          </li>
        </ul>
      </div>
    </nav>
    <br>
  <div class="container " >

    <div class="card"  "center" style="width:auto;" >
      <br>
      <br>
        <img class="card-img-top mx-auto d-block" src="usericon.png" alt=" image icon of user" style="width:20%" >

  <h1 class="text-center"> Login</h1>
  <br>
  <br>
  <form method="post" action="login.php">
    <?php include('errors.php'); ?>
    <div class="container mt-3">
    <div class="input-group mb-3">
      <div class="input-group-prepend">
        <span class="input-group-text">Username</span>
      </div>
      <input type="text" class="form-control" placeholder=" Enter Username" id="usr" name="username">
    </div>

    <div class="input-group mb-3">

      <div class="input-group-prepend">
        <span class="input-group-text">Password</span>
      </div>
        <input type="password" class="form-control" placeholder="Enter Password" id="psw" name="password">
    </div>
  </form>
  <div class="text-center">
      <button type="submit" class="btn btn-success" name="login_senior">Login as Senior</button>
      <button type="submit" class="btn btn-success" name="login_provider">Login as Provider</button>
        <button type="button" class="btn btn-success">Cancel</button>
      </div>
        <br>
        <div class="text-center">
        <small><P>Have you signed up ?</small>
        </div>
        <div class="text-center">
      <a class="btn btn-danger" href="signupSenior.php" role="button">Sign Up for Senior</a>
        <a class="btn btn-danger" href="SignUpServiceProvider.php" role="button">Sign Up for Service Provider</a>
        <br>
        </div>
      </div>
  </div>

  </div>

  </body>
  <footer class="page-footer font-small blue" style="background-color:#000000; color:#ffffff;">

    <div class="footer-copyright text-center py-3">Copyright © 2018 AIDER
      <a href="index.php"> AIDER.com</a>
      <p>All Rights Reserved by Laiba & Rupini</p>
    </div>

  </footer>
  </html>
