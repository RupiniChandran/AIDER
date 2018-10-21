<?php

//config access to database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "AIDER";

//connect to database
$connect = new mysqli($servername, $username, $password, $dbname);

//start php session access
session_start();

//set timezone of website
date_default_timezone_set('Asia/Kuala_Lumpur');

//limit how many session records to show per page
$limit=10;

$varusername=$_POST["username"];
$varpassword=$_POST["password"];
$varfullname=$_POST["fullname"];
$varphonenumber=$_POST["mobileNo"];
$varaddress=$_POST["address"];



 $sql1 = "INSERT INTO  Senior (username,password,fullname,mobileNo,address)
                  VALUES ('$varusername','$varpassword','$varfullname','$varphonenumber','$varaddress')";
mysqli_query($connect,$sql1);
 mysqli_close($connect);
?>
