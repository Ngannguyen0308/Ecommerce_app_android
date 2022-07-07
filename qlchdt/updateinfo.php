<?php 
	include "connectdb.php";
	
	$nameuser	= $_POST['nameuser'];
	$phone	= $_POST['phone'];
	$gender	= $_POST['gender'];
	$birthday	= $_POST['birthday'];
	$password	= $_POST['password'];
	$email	= $_POST['email'];

	// $nameuser	= 'nam';
	// $phone	= '12';
	// $gender	= 'nu';
	// $birthday	= '3';
	// $password	='123';
	// $email	= 'hophuongnam3@gmail.com';

    // $query = " UPDATE users u set u.nameuser=$nameuser, u.phone=$phone, u.gender=$gender, u.birthday=$birthday, u.password=$password WHERE u.email=$email ";
    $query = " UPDATE users set nameuser='$nameuser', phone='$phone', gender='$gender', birthday='$birthday', password= '$password' WHERE email='$email' ";

	$data = mysqli_query($conn, $query);
	if($data){
		echo "Done";
	} 
	else{
		echo "Error";
	}
?>
