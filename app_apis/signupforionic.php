<?php

header('Access-Control-Allow-Origin: *');

header('Access-Control-Allow-Methods: GET, POST');

header("Access-Control-Allow-Headers: X-Requested-With");
header("Access-Control-Allow-Headers: Content-Type");
include "connection.php"


$data_from_ionic = json.decode(file_get_contents("php://input");
$name = $data_from_ionic->full_name;
$email = $data_from_ionic->email;
$password = $data_from_ionic->password;

$query = "INSERT INTO users(full_name, email, password) VALUES(?,?,?)";
$stmt = $cnnx->prepare($query);
$stmt->bind_param("sss", $name, $email, $password);
$stmt->execute();

$response = [];


$result_json=json_encode($response);
echo $result_json;

?>