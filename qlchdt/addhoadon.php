<?php 
	include "connectdb.php";
	$stt	= $_POST['stt'];
	$dateorder	= $_POST['dateorder'];
	$address	= $_POST['address'];
	$iduser	= $_POST['iduser'];
	$query = "INSERT INTO orders (stt, dateorder, address, iduser) VALUES ('$stt',current_date(),'$address','$iduser')";
	
	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>