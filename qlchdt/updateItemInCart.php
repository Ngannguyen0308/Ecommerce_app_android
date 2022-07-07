<?php 
	include "connectdb.php";
	$iddetail = $_POST['iddetail'];
	$sum = $_POST['sum'];
	// $iddetail=3;
    // $sum=7;
    $query = "UPDATE details d SET d.sum=$sum, d.totalprice=$sum*d.priceproduct WHERE d.iddetail=$iddetail";


	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
