<?php
include 'conn.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<form action="tmb-kategori.php" method="post" enctype="multipart/form-data">
	<table>
		<tr>
			<td>nama kategori</td><th><input type="text" required name="nama"></input></th>
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