<?php

    $host   = "localhost";
    $username = "root";
    $password = "";
    $datebase = "testfortripviet";

    $connect = mysqli_connect($host, $username, $password, $datebase);
    if (isset($_POST['image'])) {

        $target_dir = "images/";

        $image1 = $_POST['image'];
        
        $imageStore1 = rand()."_".time().".jpeg";
        $target_dir1 = $target_dir."/".$imageStore1;
        file_put_contents($target_dir1, base64_decode($image1));
    
        $result = array();
        $select = "INSERT into image (imagephoto) VALUES ('$imageStore1')";
        $responce = mysqli_query($connect, $select);
        if ($responce) {
            echo "Tải hình ảnh thành công!";
            mysqli_close($connect);
        }
        else{
            echo "Tải hình ảnh không thành công!";
        }
    }


?>
