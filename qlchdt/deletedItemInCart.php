<?php 
	include "connectdb.php";
	$iddetail = $_POST['iddetail'];
     // $iddetail='11';
	$query = "DELETE FROM details WHERE details.iddetail=$iddetail ";
	
	$data = mysqli_query($conn, $query);

	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}

?>