<?php 

$servername = 'localhost';
$username ='root';
$password = 'root';

$conn = new mysqli($servername, $username, $password);
if($conn -> connect_error){
  echo json_encode(die('Connection failed: ' . $conn->connect_error));
}
echo 'Connection Successfully!';
$conn->close()

?>