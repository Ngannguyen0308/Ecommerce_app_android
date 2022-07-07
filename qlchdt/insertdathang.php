<?php 
	include "connectdb.php";
	
	$hoten	= $_POST['hoten'];
	
	$sdt	= $_POST['sdt'];
	$diachi	= $_POST['diachi'];
	$tongtien	= $_POST['tongtien'];
	$idorder = $_POST['idorder'];
	// $idorder = '1';
	// $hoten	= '2';
	// $tongtien	= '3';
	// $sdt	= '5';
	// $diachi	= '7';

    $query = "INSERT INTO dathang(hoten, sdt, diachi, tongtien, idorder) VALUES ('$hoten','$sdt','$diachi','$tongtien','$idorder')";


	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
