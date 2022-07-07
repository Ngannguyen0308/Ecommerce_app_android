<?php 
	include "connectdb.php";
	$iduser = $_POST['iduser'];
    //  $iduser='1';
	$query = "SELECT orders.id from orders WHERE orders.stt='0' AND orders.iduser = $iduser";
	
	$data = mysqli_query($conn, $query);
	
			$mangsp = array();
			while ($row = mysqli_fetch_assoc($data)) {
			
				array_push($mangsp, new cart(
					$row['id'],		
				));
			}



	echo json_encode($mangsp);
	
	class cart{
		 function __construct ($idorder){
			$this->idorder = $idorder;
		}
	}
?>