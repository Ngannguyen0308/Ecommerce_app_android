<?php 
	$host	= "localhost";
	$username = "root";
	$password = "";
	$datebase = "qlchdt";

	$conn = mysqli_connect($host, $username, $password, $datebase);
	mysqli_query($conn, "SET NAME 'utf8'");	
?>