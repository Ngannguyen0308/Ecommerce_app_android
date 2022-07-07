<?php 
	include "connectdb.php";
	$email = $_POST['email'];
	$password	= $_POST['password'];
	$nameuser	= $_POST['nameuser'];

	$query = "INSERT INTO users (iduser,nameuser, birthday, phone, email, gender, password, typeuser) VALUES (null,'$nameuser','','$email','','$password',1)";
	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
