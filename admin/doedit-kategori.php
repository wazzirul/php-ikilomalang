<?php
if (isset($_POST['btn-submit'])) {
	include 'conn.php';
	$nama = $_POST['nama'];
	$id = $_POST['id'];
	$sql = mysqli_query($conn,"UPDATE tbl_kategori set kategori='$nama' where id = $id");
	if ($sql > 0) {
		header("location:kategori.php");
	}else{
		"Error";
	}
}else{
	echo "Warning Access";
}
?>