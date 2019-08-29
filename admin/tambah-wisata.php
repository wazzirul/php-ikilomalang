<?php
include 'conn.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="tmb-wisata.php" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>nama</td><th><input type="text" required name="nama"></input></th>
		</tr>
		<tr>
			<td>gambar</td><th><input type="file" required name="gambar"></input></th>
		</tr>
		<tr>
			<td>isi</td><th><textarea name="isi" required></textarea></th>
		</tr>
		<tr>
			<td>lokasi</td><th><input type="text" name="lokasi"></input></th>
		</tr>
		<tr>
			<td>jam buka</td><th><input type="text" name="jambuka"></input></th>
		</tr>
		<tr>
			<td>kategori</td><th>
				<select required name="kategori">
					<option selected value="">-</option>
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
					<option selected value="">-</option>
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
				<input type="submit" value="Tambah" name="btn-submit"></input>
			</th>
		</tr>
	</table>
</form>
</body>
</html>