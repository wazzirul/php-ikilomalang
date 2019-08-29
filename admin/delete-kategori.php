<?php
if (isset($_GET['id'])) {
	include 'conn.php';
	$id = $_GET['id'];
	$sql = mysqli_query($conn,"DELETE from tbl_kategori where id=$id");
	if ($sql > 0) {
		header('location:kategori.php');
	}else{
		echo "Faili To Delete";
	}
}else{
	echo "WARNING ACCSESS";
}
?>