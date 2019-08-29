<?php
if (isset($_POST['btn-submit'])) {
	include 'conn.php';
	$nama = $_POST['nama'];
	$gambar = $_FILES['gambar']['name'];
	$size = $_FILES['gambar']['size'];
	$type = $_FILES['gambar']['type'];
	$tmp_name = $_FILES['gambar']['tmp_name'];
	$isi = $_POST['isi'];
	$lokasi = $_POST['lokasi'];
	$jambuka = $_POST['jambuka'];
	$kategori = $_POST['kategori'];
	$subkategori = $_POST['subkategori'];
	
	$path = "../images/".$gambar;
	$id = $_POST['id'];
	if (empty($gambar)) {
	$sql = mysqli_query($conn,"UPDATE tbl_wisata set nama='$nama',isi='$isi',lokasi='$lokasi',jambuka='$jambuka',kategori=$kategori,subkategori='$subkategori' where id=$id");
		if ($sql > 0) {
			header('location:admin.php');
		}else{
			echo "syntax error";
		}
	}else{
	if ($type == "image/png" || $type == "image/jpeg") {
		if ($size <= 3000000) {
			if (move_uploaded_file($tmp_name,$path)) {
				$sql = mysqli_query($conn,"UPDATE tbl_wisata set nama='$nama',gambar='$gambar',isi='$isi',lokasi='$lokasi',jambuka='$jambuka',kategori=$kategori,subkategori='$subkategori' where id=$id");
				if ($sql > 0) {
					header('location:admin.php');
				}else{
					echo "syntax error";
				}
			}else{
				echo "Proses Upload File Gagal";
			}
		}else{
			echo "Ukuran File Harus Kurang Dari 3mb";
		}
	}else{
		echo "File Bukan Bertipe Gambar";
	}		
}
}else{
	echo "Warning Access";
}
?>