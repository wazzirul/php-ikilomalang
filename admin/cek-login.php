<?php
if(!isset($_SESSION)){session_start();}
include 'conn.php';
$username = $_SESSION['username'];
$q = mysqli_query($conn,"select * from tbl_akun where username = '".$username."'");
$d = mysqli_fetch_array($q);
$username = $d['username'];
$status = $d['status'];
if (empty($_SESSION['username'])) {
	header('location:logout.php');
}
?>