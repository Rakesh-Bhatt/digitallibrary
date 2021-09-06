<!-- <?php 
ob_start();
error_reporting(0);
session_start();
$con=mysql_connect("localhost","root","");
mysql_select_db("digitallibrery");
?>
<html>
<link href="../style.css" rel="stylesheet" type="text/css">
 -->

 <?php
$con=mysqli_connect('localhost','root','','digitallibrery');//check connection
if (!$con) {
	die('database connection error');
	}
?>