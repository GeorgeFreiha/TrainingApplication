<?php
 header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
header("Access-Control-Allow-Headers: Content-Type");

 include "connection.php";
 
 $program_id = $_GET["program_id"];
 
 $query = "SELECT * FROM programsplit WHERE program_id=" . $program_id;
 $stmt = $cnnx->prepare($query);
 $stmt->execute();
 
 $results = $stmt->get_result();
 
 $response = [];
 while($card = $results->fetch_assoc()){
	 $response[] = $card;
	 
 }
 $cards_json = json_encode($response);
 echo $cards_json;
 
 
 
?>