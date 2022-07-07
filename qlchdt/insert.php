<?php 
	include "connectdb.php";
	$iduser = $_POST['iduser'];
      // $iduser='3';
	$query = "SELECT orders.id from orders WHERE orders.stt='0' AND orders.iduser = $iduser";
	
	$data = mysqli_query($conn, $query);
	
	
	 class cart{
		 function __construct ($id){
			$this->id = $id;
		}
	}

	if (mysqli_num_rows($data)<=0) 
	{	
		$query = "INSERT orders (stt, dateorder, iduser) VALUES(0,current_date(),$iduser)";
		$data1 = mysqli_query($conn, $query);
		$query = "SELECT orders.id from orders WHERE orders.stt='0' AND orders.iduser = $iduser";
		$data = mysqli_query($conn, $query);
		if($data1 && $data)
		{
			$mangsp = array();
			while ($row = mysqli_fetch_assoc($data)) 
			{
				array_push($mangsp, new cart(
					$row['id'],		
				));
			}
			echo json_encode($mangsp);
		} 
		else
		{
			echo "Error";
		}


	}
	else
	{
		$mangsp = array();
		while ($row = mysqli_fetch_assoc($data)) 
		{
			array_push($mangsp, new cart(
				$row['id'],		
			));
		}
		echo json_encode($mangsp);
	}
	
?>
