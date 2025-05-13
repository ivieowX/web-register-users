<?php
header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *"); // เปิดให้ Frontend เข้าถึงได้
header("Access-Control-Allow-Methods: POST");

require 'connectdb.php';

// รับข้อมูล JSON
$data = json_decode(file_get_contents("php://input"), true);

$name = $conn->real_escape_string($data["name"]);
$email = $conn->real_escape_string($data["email"]);
$password = password_hash($data["password"], PASSWORD_DEFAULT);

// เช็คอีเมลซ้ำ
$check = $conn->query("SELECT id FROM users WHERE email = '$email'");
if ($check->num_rows > 0) {
    echo json_encode(["status" => "error", "message" => "อีเมลนี้มีอยู่ในระบบแล้ว"]);
    exit;
}

// บันทึกลงฐานข้อมูล
$sql = "INSERT INTO users (name, email, password) VALUES ('$name', '$email', '$password')";
if ($conn->query($sql)) {
    echo json_encode(["status" => "success", "message" => "ลงทะเบียนสำเร็จ"]);
} else {
    echo json_encode(["status" => "error", "message" => "เกิดข้อผิดพลาด: " . $conn->error]);
}
?>
