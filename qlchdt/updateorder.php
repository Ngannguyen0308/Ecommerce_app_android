<?php 
	include "connectdb.php";
	
	$totalprice	= $_POST['totalprice'];
	
	$idorder	= $_POST['idorder'];

	// $idorder = '1';
	// $hoten	= '2';
	// $tongtien	= '3';
	// $sdt	= '5';
	// $diachi	= '7';

    $query = "UPDATE orders set stt=1, totalprice='$totalprice' WHERE id='$idorder'";


	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
		
	} 
	else{
		echo "Error";
	}
?>
