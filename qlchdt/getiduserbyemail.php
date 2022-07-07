<?php 
	include "connectdb.php";
	
	
	
	$email = $_POST['email'];
    // $email='admin';
	
	$query = "SELECT * FROM users WHERE email =  '$email'";
    
	$data = mysqli_query($conn, $query);
	$manguser = array();
	
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($manguser, new User(
			$row['iduser']
			));
	}
	echo json_encode($manguser);
	
	class User{
		 function __construct ($iduser){
			$this->iduser 				= $iduser;
			
		}
	}
?>