<?php 
	include "connectdb.php";
	$email = $_POST['email'];
	$password = $_POST['password'];

	$query = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";

	$data = mysqli_query($conn, $query);
	$count = mysqli_num_rows($data);
	if($count>0){
		echo "1";
	} 
	else{
		echo "0";
	}
?>