<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

require 'connectdb.php';

$sql = "SELECT * FROM users";
$result = $conn->query($sql);

$users = [];
while ($row = $result->fetch_assoc()) {
    $users[] = $row;
}

echo json_encode($users);
?>
