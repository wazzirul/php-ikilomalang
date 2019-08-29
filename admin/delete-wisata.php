<?php
if (isset($_GET['id'])) {
	include 'conn.php';
	$id = $_GET['id'];
	$sql = mysqli_query($conn,"DELETE from tbl_wisata where id=$id");
	if ($sql > 0) {
		header('location:admin.php');
	}else{
		echo "Faili To Delete";
	}
}else{
	echo "WARNING ACCSESS";
}
?>