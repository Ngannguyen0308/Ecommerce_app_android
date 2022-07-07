<?php 
	include "connectdb.php";
	$nameproduct = $_POST['nameproduct'];
	// $nameproduct="";
	$query = "SELECT * FROM product WHERE nameproduct LIKE  '%$nameproduct%' ";
	
	$data = mysqli_query($conn, $query);
	$mangsp = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($mangsp, new product(
			$row['idproduct'],
			$row['nameproduct'],
			$row['price'],
			$row['manhinh'],
			$row['hdh'],
			$row['camerasau'],
			$row['cameratruoc'],
			$row['chip'],
			$row['ram'],
			$row['bnt'],
			$row['sim'],
			$row['pinsac'],
			$row['sum'],
			$row['idtype'],
			$row['hinh']));
	}
	echo json_encode($mangsp);
	
	class product{
		 function __construct ($idproduct, $nameproduct, $price, $manhinh, $hdh, $camerasau, $cameratruoc, $chip, $ram, $bnt, $sim, $pinsac, $sum, $idtype,$hinh){
			$this->idproduct 				= $idproduct;
			$this->nameproduct 		= $nameproduct;
			$this->price 		= $price;
			$this->manhinh 		= $manhinh;
			$this->hdh 		= $hdh;
			$this->camerasau 		= $camerasau;
			$this->cameratruoc 		= $cameratruoc;
			$this->chip 		= $chip;
			$this->ram 		= $ram;
			$this->bnt 		= $bnt;
			$this->sim 		= $sim;
			$this->pinsac 		= $pinsac;
			$this->sum 		= $sum;
			$this->idtype 		= $idtype;
			$this->hinh 		= $hinh;
		}
	}
?>