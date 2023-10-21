<?php
try {
	$lala = new PDO("mysql:host=localhost; dbname=oop", "root", "");
}
catch(PDOException $error){
	$error->getMessage();
}
?>