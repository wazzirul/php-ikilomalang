<?php
include 'conn.php';
if(isset($_GET['id'])) {
$id = $_GET['id'];
$sql = mysqli_query($conn,"select tbl_wisata.id,tbl_wisata.nama,tbl_wisata.gambar,tbl_wisata.isi,tbl_wisata.lokasi,tbl_wisata.jambuka,tbl_kategori.kategori as nama_kategori,tbl_subkategori.subkategori as nama_subkategori,tbl_wisata.kategori,tbl_wisata.subkategori from tbl_wisata,tbl_kategori,tbl_subkategori where tbl_wisata.kategori = tbl_kategori.id and tbl_wisata.subkategori = tbl_subkategori.id and tbl_wisata.id=$id");
$data = mysqli_fetch_array($sql);
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="doedit-wisata.php" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>nama</td><th><input type="text" value="<?=$data['nama']?>" required name="nama"></input></th>
		</tr>
		<tr>
			<td>gambar</td><th>
			<img src="../images/<?=$data['gambar']?>" width="300px" height="200px"><br>
			<input type="file" name="gambar" ></input></th>
		</tr>
		<tr>
			<td>isi</td><th><textarea name="isi" required><?=$data['isi']?></textarea></th>
		</tr>
		<tr>
			<td>lokasi</td><th><input type="text" required value="<?=$data['lokasi']?>" name="lokasi"></input></th>
		</tr>
		<tr>
			<td>jam buka</td><th><input type="text" required value="<?=$data['jambuka']?>" name="jambuka"></input></th>
		</tr>
		<tr>
			<td>kategori</td><th>
				<select required name="kategori">
					<option selected value="<?=$data['kategori']?>"><?=$data['nama_kategori']?></option>
					<?php
					$q = mysqli_query($conn,"select * from tbl_kategori");
					while($dk = mysqli_fetch_array($q)){
					?>
					<option value="<?=$dk['id']?>"><?= $dk['kategori']?></option>
					<?php
					}
					?>
				</select>
			</th>
		</tr>
		<tr>
			<td>subkategori</td><th>
				<select required name="subkategori">
					<option selected  value="<?=$data['subkategori']?>"><?=$data['nama_subkategori']?></option>
					<?php
					$q1 = mysqli_query($conn,"select * from tbl_subkategori");
					while($dk1 = mysqli_fetch_array($q1)){
					?>
					<option value="<?=$dk1['id']?>"><?= $dk1['subkategori']?></option>
					<?php
					}
					?>
				</select>
			</th>
		</tr>
		<tr>
			<th colspan="2">
				<input type="hidden" name="id" value="<?=$data['id']?>"></input>
				<input type="submit" value="Edit" name="btn-submit"></input>
			</th>
		</tr>
	</table>
</form>
</body>
</html>
<?php } ?>