<?php
session_start();
$admin = $_SESSION['admin'];
if(!$admin){
	header("location:login.php");
}
?>