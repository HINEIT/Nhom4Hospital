<?php 
require_once("include/config.php");
if(!empty($_POST["email"])) {
	$email= $_POST["email"];
	
		$result =mysql_query("SELECT email FROM users WHERE email='$email'");
		$count=mysql_num_rows($result);
if($count>0)
{
echo "<span style='color:red'> Email đã tồn tại .</span>";
 echo "<script>$('#submit').prop('disabled',true);</script>";
} else{
	
	echo "<span style='color:green'> Email có thể sử dụng .</span>";
 echo "<script>$('#submit').prop('disabled',false);</script>";
}
}


?>
