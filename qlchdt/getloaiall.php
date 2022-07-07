<?php 
	include "connectdb.php";
	
	$query = "SELECT * FROM type";
	
	$data = mysqli_query($conn, $query);
	$mangloai = array();
	
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($mangloai, new User(
			$row['idtype'],
			$row['nametype']));
	}
	echo json_encode($mangloai);
	
	class User{
		 function __construct ($idtype, $nametype){
			$this->idtype 				= $idtype;
			$this->nametype 		= $nametype;

		}
	}
?>