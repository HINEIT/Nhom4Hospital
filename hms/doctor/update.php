<?php
include "./include/config.php";
 if(isset($_POST['update'])){
    $id = $_GET['id'];
    $option = $_POST['option'];
    mysql_query("update appointment set doctorStatus='$option' where id = '".$_GET['id']."'");
    if( mysql_query("update appointment set doctorStatus='$option' where id = '".$_GET['id']."'") == true){
        header('Location: appointment-history.php');
    }
}else{
    echo "Lỗi";
}

?>
<!-- $sql = "UPDATE `appointment` SET `doctorStatus`= $option WHERE id = '$id"; -->