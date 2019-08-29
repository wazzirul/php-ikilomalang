<?php
if (isset($_POST['btn-submit'])) {
	include 'conn.php';
	$nama = $_POST['nama'];
	$sql = mysqli_query($conn,"INSERT INTO tbl_subkategori values(default,'$nama')");
	if ($sql > 0) {
		header("location:subkategori.php");
	}else{
		"Error";
	}
}else{
	echo "Warning Access";
}
?>