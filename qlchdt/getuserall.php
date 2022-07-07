<?php 
	include "connectdb.php";
	
	$query = "SELECT * FROM users";
	
	$data = mysqli_query($conn, $query);
	$manguser = array();
	
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($manguser, new User(
			$row['iduser'],
			$row['nameuser'],
			$row['birthday'],
			$row['phone'],
			$row['email'],
			$row['gender'],
			$row['passsword'],
			$row['typeuser']));
	}
	echo json_encode($manguser);
	
	class User{
		 function __construct ($iduser, $nameuser, $birthday, $phone, $email, $gender, $passsword, $typeuser){
			$this->iduser 				= $iduser;
			$this->nameuser 		= $nameuser;
			$this->birthday 		= $birthday;
			$this->phone 		= $phone;
			$this->email 		= $email;
			$this->gender 		= $gender;
			$this->passsword 		= $passsword;
			$this->typeuser 	= $typeuser;
		}
	}
?>