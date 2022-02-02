<?php 

$servername = 'localhost';
$username ='root';
$password = 'root';
$database = 'leappskillFlutter';

$conn = new mysqli($servername, $username, $password, $database);
if($conn -> connect_error){
  echo json_encode(die('Connection failed: ' . $conn->connect_error));
}

$sql = 'SELECT * FROM testing';
$result = mysqli_query($conn, $sql);

$myData = array();

if($result -> num_rows > 0){
  while($row = mysqli_fetch_assoc($result)){
    $myData[] = $row; 

    $output = array(
      'status' => 'successfully!',
      'data' => $myData
    );
  }
}else{

  $output = array(
    'status' => 'failed!',
    'data'=> 'No Record Found!'
  );
}

echo json_encode($output);

// echo 'Connection Successfully!';
$conn->close()

?>