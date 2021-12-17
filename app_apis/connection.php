<?php

$server = "localhost";
$username = "root";
$password = "";
$dbname = "nof1trainingdb";

$cnnx = new mysqli($server, $username, $password, $dbname);
if($cnnx->connect_error){
	die("Failed :(");
}

?>