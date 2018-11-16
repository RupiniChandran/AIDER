<?php
include("connection.php");

$senior = $_SESSION['username'];

if (isset($_POST['sumbit_review'])){
  $date = mysqli_real_escape_string($db, $_POST['date']);
  $ratingSelect = mysqli_real_escape_string($db, $_POST['ratingSelect']);
  $comments = mysqli_real_escape_string($db, $_POST['comments']);

  $query =  "INSERT INTO review (service, date, rating, comments, senior)
        VALUES('000', '$date', '$ratingSelect', '$comments', '$senior')";
  mysqli_query($db, $query);
  //header('location: ServiceRequestList.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Review for Senior</title>
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
          <li class="nav-item">
            <a class="nav-link" href="ServiceRequestList.php">Manage Service Requests</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="login.php">Log Out</a>
          </li>
        </ul>
      </div>
    </nav>
  <br>
<div class="container " >

  <div class="card"  "center" style="width:auto;" >
    <br>
    <br>
      <img class="card-img-top mx-auto d-block" src="ratingsblue.png" alt="Card image" style="width:30%" >

<h1> &nbsp; Review </h1>
<br>
<br>
<form action="review.php" method="post">

    <div class="container mt-3">
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text">Date:</span>
        </div>
        <input type="date" class="form-control" id = "date" name = "date" value = "<?php echo $date;?>">
      </div>

      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text">Rating:</span>
        </div>
        <select class="form-control" id="ratingSelect" name="ratingSelect" value = "<?php echo $ratingSelect;?>">
          <option>1 </option>
          <option>2 </option>
          <option>3 </option>
          <option>4 </option>
          <option>5 </option>
        </select>
      </div>

      <div class="input-group mb-3 ">

        <div class="input-group-prepend">
          <span class="input-group-text">Comment:</span>
        </div>
          <textarea class="form-control"  placeholder="Enter your comments" id="comments" name="comments" value="<?php echo $comments;?>"></textarea>
      </div>


<br>



<br>


<button type="submit" class="btn btn-success" name="sumbit_review">Submit</button>

      <br>
      <br>
      </div>
    </div>
</div>

</div>
</form>
</div>

</body>
<footer class="page-footer font-small blue" style="background-color:#000000; color:#ffffff;">

  <div class="footer-copyright text-center py-3">Copyright © 2018 AIDER
    <a href="index.html"> AIDER.com</a>
    <p>All Rights Reserved by Laiba & Rupini</p>
  </div>
</footer>
</html>
