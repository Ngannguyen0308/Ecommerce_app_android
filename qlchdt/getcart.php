<?php 
	include "connectdb.php";
	$iduser = $_POST['iduser']; 
	// $iduser='2';
	$query = "SELECT d.iddetail, p.nameproduct, d.priceproduct, d.sum, d.totalprice,d.idorder,p.hinh FROM details d, product p WHERE d.idorder=( SELECT id FROM orders WHERE stt='0' AND iduser = $iduser ) AND d.idproduct = p.idproduct";
	
	$data = mysqli_query($conn, $query);
	$mangsp = array();
	while ($row = mysqli_fetch_assoc($data)) {
		array_push($mangsp, new cart(
			$row['iddetail'],
			$row['nameproduct'],
			$row['priceproduct'],
			$row['sum'],
			$row['totalprice'],
			$row['idorder'],
			$row['hinh'],
        ));
	}
	echo json_encode($mangsp);
	
	class cart{
		 function __construct ($iddetail, $nameproduct, $priceproduct, $sum, $totalprice,$idorder,$hinh){
			$this->iddetail 				= $iddetail;
			$this->nameproduct 		= $nameproduct;
			$this->priceproduct 		= $priceproduct;
			$this->sum 		= $sum;
			$this->totalprice 		= $totalprice;
			$this->idorder 		= $idorder;
			$this->hinh 		= $hinh;
		}
	}
?>