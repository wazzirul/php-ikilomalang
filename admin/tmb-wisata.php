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
	if ($type == "image/png" || $type == "image/jpeg") {
		if ($size <= 3000000) {
			if (move_uploaded_file($tmp_name,$path)) {
				$sql = mysqli_query($conn,"INSERT INTO tbl_wisata values (default,'$nama','$gambar','$isi','$lokasi','$jambuka','',$kategori,$subkategori)");
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
}else{
	echo "Warning Access";
}
?>