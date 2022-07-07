<?php 
	include "connectdb.php";
	$email = $_POST['email']; 
	//$email ='admin'; 
	$query = "SELECT * FROM users WHERE email = '$email'";
	
	$data = mysqli_query($conn, $query);
	$manguser = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($manguser, new user(
			$row['iduser'],
			$row['nameuser'],
			$row['birthday'],
			$row['phone'],
			$row['email'],
			$row['gender'],
			$row['password'],
			$row['typeuser'],
        ));
	}
	echo json_encode($manguser);
	
	class user{
		 function __construct ($iduser, $nameuser, $birthday, $phone, $email, $gender, $password, $typeuser){
			$this->iduser 				= $iduser;
			$this->nameuser 		= $nameuser;
			$this->birthday 		= $birthday;
			$this->phone 		= $phone;
			$this->gender 		= $gender;
			$this->password 		= $password;
			$this->typeuser 		= $typeuser;
			$this->email = $email;
		}
	}
?>