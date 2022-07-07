<?php 
	include "connectdb.php";
	$nameproduct = $_POST['nameproduct'];
	$price	= $_POST['price'];
	$manhinh	= $_POST['manhinh'];
	$hdh	= $_POST['hdh'];
	$camerasau	= $_POST['camerasau'];
	$cameratruoc	= $_POST['cameratruoc'];
	$chip	= $_POST['chip'];
	$ram	= $_POST['ram'];
	$bnt	= $_POST['bnt'];
	$sim	= $_POST['sim'];
	$pinsac	= $_POST['pinsac'];
	$sum	= $_POST['sum'];
	$idtype =$_POST['idtype'];
	
	$query = "INSERT INTO product(idproduct, nameproduct, price, manhinh, hdh, camerasau, cameratruoc, chip, ram, bnt, sim, pinsac, sum, idtype) VALUES (null,'$nameproduct','$price','$manhinh', '$hdh', '$camerasau', '$cameratruoc', '$chip', '$ram', '$bnt', '$sim', '$pinsac','$sum','$idtype')";
	
	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
