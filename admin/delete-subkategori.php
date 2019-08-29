<?php
if (isset($_GET['id'])) {
	include 'conn.php';
	$id = $_GET['id'];
	$sql = mysqli_query($conn,"DELETE from tbl_subkategori where id=$id");
	if ($sql > 0) {
		header('location:subkategori.php');
	}else{
		echo "Faili To Delete";
	}
}else{
	echo "WARNING ACCSESS";
}
?>