<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>
  <button><a href="register.php">Register</a></button>
  <button><a href="login.php">Login</a></button>
</body>
</html>
<?php
session_start();
require('database.class.php');
echo "hello";
?>