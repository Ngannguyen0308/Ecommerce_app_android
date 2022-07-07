<?php 
	include "connectdb.php";
	$nametype = $_POST['nametype'];
	$query = "INSERT INTO type( nametype ) VALUES ('$nametype')";
	
	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>