<?php
include 'conn.php';
if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$sql = mysqli_query($conn,"SELECT * from tbl_subkategori where id = $id");
	$data = mysqli_fetch_array($sql);
}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="doedit-subkategori.php" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>nama subkategori</td><th><input type="text" required name="nama" value="<?=$data['subkategori']?>"></input></th>
		</tr>
		<tr>
			<th colspan="2">
				<input type="hidden" name="id" value="<?=$data['id']?>"></input>
				<input type="submit" value="Tambah" name="btn-submit"></input>
			</th>
		</tr>
	</table>
</form>
</body>
</html>