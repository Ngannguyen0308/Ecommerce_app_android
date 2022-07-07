<?php 
	include "connectdb.php";
	$idorder = $_POST['idorder'];
	$priceproduct	= $_POST['priceproduct'];
	// $totalprice	= $_POST['totalprice'];
	$idproduct	= $_POST['idproduct'];	
	
	//$query = "INSERT INTO product(idproduct, nameproduct, price, manhinh, hdh, camerasau, cameratruoc, chip, ram, bnt, sim, pinsac, sum, idtype) VALUES (null,'$nameproduct','$price','$manhinh', '$hdh', '$camerasau', '$cameratruoc', '$chip', '$ram', '$bnt', '$sim', '$pinsac','$sum','$idtype')";
    $query = "INSERT INTO details(iddetail, idorder, priceproduct, sum, totalprice, idproduct) VALUES (null,'$idorder','$priceproduct',1,'$priceproduct','$idproduct')";


	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
