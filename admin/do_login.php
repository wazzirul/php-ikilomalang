<?php
if(isset($_POST['btn-submit'])){
session_start();
include 'conn.php';

$username = $_POST['username'];
$password = $_POST['password'];
$q = mysqli_query($conn,"select * from tbl_akun where username='".$username."' and password='".md5($password)."'");
$row = mysqli_num_rows($q);
	if ($row > 0) {
		$data = mysqli_fetch_array($q);
		$_SESSION['username'] = $data['username'];
		$status = $data['status'];
		if ($status == "admin") {
			header('location:admin.php');
		}elseif ($status == "superadmin") {
			header('location:superadmin.php');
		}else{
			header('login.php');
		}
	}else{
		echo "PASSWORD SALAH";
	}
}else{
echo "WARNING ACCESS";
}
?>