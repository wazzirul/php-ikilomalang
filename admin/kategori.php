<?php
include 'cek-login.php';
if ($status == "admin" || $status == "superadmin"){
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
	*{
		margin: 0;
		padding:0;
	}
	a{
		text-decoration: none;
	}
	.box{
		margin: 0 auto;
		display: block;
		width: 96%;
		margin-top: 2%;
		height: 500px;
		overflow: auto;
		border:3px solid #000;
		text-align: center;
		padding: 2% 1%;
	}
	.box table{
		border:1px solid #000;
		width: 100%;
		border-collapse: collapse;
	}
	.box td,.box th{
		padding:3px 5px;
	}
	.box tbody td,.box tbody th{
		vertical-align: top;
	}
	.box img{
		width: 200px;
		height: 100px;
	}
	.isi{
		text-align: justify;
	}
	.box form input[type='text']{
		padding:5px 1%;
		width: 98%;
		border-radius: 10px;
		margin: 1% 0;
	}
	</style>
</head>
<body>
<div class="box">
<a href="admin.php">WISATA</a><br>
<a href="subkategori.php">SUBKATEGORI</a>
<form method="post">
	<input type="text" name="acuan" placeholder="PENCARIAN...."></input>
	<input type="submit" name="btn-cari" style="display: none;"></input>
</form>
<a href="tambah-kategori.php">TAMBAH KATEGORI</a>
	<table border="1px">
		<thead>
			<tr>
				<th>No</th>
				<th>Kategori</th>
				<th>Opsi</th>
			</tr>
		</thead>
		<tbody>
			<?php
			$no = 1;
			if (isset($_POST['acuan'])) {
			$acuan = $_POST['acuan'];
			$sql = mysqli_querY($conn,"SELECT * from tbl_kategori where id like '%$acuan%' or kategori like '%$acuan%'");
			}else{
			$sql = mysqli_querY($conn,"SELECT * from tbl_kategori");
			}
			while($data = mysqli_fetch_array($sql)){
			?>
			<tr>
				<td><?=$no?></td>
				<td><?=$data['kategori']?></td>
				<td><a href="edit-kategori.php?id=<?=$data['id']?>">Edit</a><br><a href="delete-kategori.php?id=<?=$data['id']?>">Delete</a></td>
			</tr>
			<?php
			$no++;
			}
			?>
		</tbody>
	</table>
</div>


</body>
</html>
<?php
}
?>