<?php
include 'admin/conn.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="css/artikel-alam.css">
<script type="text/javascript">
	$(document).ready(function () {
		$(window).scroll(function () {
			if ($(this).scrollTop() > 150) {
				$('#to-top').fadeIn();
			}else{
				$('#to-top').fadeOut();
			}
		});

		$('#to-top').click(function () {
			$('html body').animate({scrollTop:0},500);
		});


		var open=false;
		$('.nav').click(function () {
			if (open) {
				$(this).text('menu');
				$('.box').animate({'left':'-236px'},500);
			}else{
				$(this).text('close');
				$('.box').animate({'left':'-0px'},500);
			}
			open = !open;
		});

		$('.nav-li').click(function () {
			$(this).toggleClass('tap');
		});
	});
</script>
</head>
<body>
<a id="to-top"><img src="img/top.png"></a>

<div class="box">
	<div class="nav">menu</div>
	<div class="menu">
	<img src="img/logo1.jpg">
	<form action="search.php" method="post" id="pencarian">
		<input type="text" name="acuan" placeholder="pencarian" required></input>
		<input type="submit" name="btn-submit" style="display: none;"></input>
	</form>
		<nav class="nav-box">
			<ul class="nav-ul">
				<li><a href="">home</a></li>
				<li class="nav-li"><a>wisata<span class="arrow"></span></a>
				<ul>
					<li><a href="">wisata alam</a></li>
					<li><a href="">wisata buatan</a></li>
					<li><a href="">wisata sejarah</a></li>
					<li><a href="">wisata kuliner</a></li>
				</ul>
				</li>
				<li class="nav-li"><a>fasilitas<span class="arrow"></span></a>
				<ul>
					<li><a href="">restauran</a></li>
					<li><a href="">pembimbing wisata</a></li>
					<li><a href="">penukaran uang</a></li>
					<li><a href="">transportasi</a></li>
					<li><a href="">penginapan</a></li>
				</ul>
				</li>
				<li class="nav-li"><a>ganti bahasa<span class="arrow"></span></a>
				<ul>
					<li><a href="">indonesia</a></li>
					<li><a href="">english</a></li>
					<li><a href="">francais</a></li>
					<li><a href="">japanese</a></li>
				</ul>
				</li>
				<li><a href="">login</a></li>
			</ul>
		</nav>
	</div>
</div>


<div id="slider">
	<span class="inside"><h1>WISATA ALAM</h1>		
		<p>Ikilo Malang berupaya memberikan kemudahan kepada para wisatawan ketika berkunjung ke area Malang Raya.<br> Dengan adanya netizen, Ikilo Malang akan terus 	berkembang dan bercitra sebagai Media Partner di Kota Malang. Thanks for all visitor!
	</p></span>
	<figure>
		<?php
		$id = $_GET['id'];
		$slide = mysqli_query($conn,"SELECT a.id,a.nama,a.gambar,a.isi,a.lokasi,a.jambuka,b.kategori,c.subkategori from tbl_wisata a left join tbl_kategori b on a.kategori = b.id left join tbl_subkategori c on a.subkategori = c.id where a.id = $id ");
		$dslide = mysqli_fetch_array($slide);
		?>
		<img src="images/<?=$dslide['gambar']?>">
	</figure>
</div>
<div id="isi">
	<div class="body">
		<?php
		$body = mysqli_query($conn,"SELECT a.id,a.nama,a.gambar,a.isi,a.lokasi,a.jambuka,b.kategori,c.subkategori from tbl_wisata a left join tbl_kategori b on a.kategori = b.id left join tbl_subkategori c on a.subkategori = c.id where a.id = $id ");
		$dbody = mysqli_fetch_array($body);
		$subkategori = $dbody['subkategori'];
		?>
	<h2><?=$dbody['nama']?></h2>
	<br><img src="images/<?=$dbody['gambar']?>"><p><?=nl2br($dbody['isi'])?></p>
	<br>
	<hr color="#000">
	<span class="share">
	<h3>Bagikan Artikel Ini</h3>
	<img src="img/fbico.png"/><img src="img/twitterico.png"/><img src="img/gplusico.png">
	</span>
	<br>
	<hr color="#000">
	<span class="komentar">
	<h3>Komentar</h3>
	<?php
	$komen = mysqli_query($conn,"select tbl_komentar.pri,tbl_komentar.id,tbl_komentar.nama,tbl_komentar.email,tbl_komentar.komentar from tbl_komentar,tbl_wisata where tbl_komentar.id = tbl_wisata.id and tbl_wisata.id = $id");
	while ($dkomen = mysqli_fetch_array($komen)){
	?>
	<br>
	<div class="komen-box">
	<img src="img/anonim.jpg">
		<span class="nama-komen"><?=$dkomen['nama']?></span><br>
		<span class="email-komen"><?=$dkomen['email']?></span><br>
		<span class="isi-komen"><?=nl2br($dkomen['komentar'])?></span>
	</div>
	<?php
	}
	?>
	<p class="komen">Silahkan berkomentar tentang artikel ini</p>
	<form method="post">
		<table class="tbl-ngisi">
			<tr>
				<td>Nama</td><td><input type="text" placeholder="Nama Anda" name="nama"></input></td>
			</tr>
			<tr>
				<td>Email</td><td><input type="text" placeholder="Email Anda" name="email"></input></td>
			</tr>
			<tr>
				<td>Komentar</td><td><textarea name="komentar" placeholder="Komentar Anda"></textarea></td>
			</tr>
			<tr><th colspan="2"><input type="submit" name="btn-komen"></input></th></tr>
		</table>
		<?php
		if(isset($_POST['btn-komen'])){
			$namakomentar = $_POST['nama'];
			$emailkomentar = $_POST['email'];
			$isikomentar = $_POST['komentar'];
			$sql = mysqli_query($conn,"INSERT into tbl_komentar values (default,$id,'$namakomentar','$emailkomentar','$isikomentar')");
			if ($sql > 0) {
				echo "";
			}else{
				echo "";
			}
		}else{
			echo "";
		}
		?>
	</form>
	</span>
	</div>
	<div class="sidebar">
		<h2>Lokasi</h2>
		<p><?=$dbody['lokasi']?></p>
		<br>
		<h2>Jam buka</h2>
		<p><?=$dbody['jambuka']?></p>
		<br>
		<h2>Map</h2>
		<div class="map-wrap"><img src="img/map.png" width="300px" height="300px"></div>
	</div>
</div>
<div id="wisata">
	<h1><?=$dbody['subkategori']?></h1>
	<ul class="tw-box">
	<?php
	$pantai = mysqli_query($conn,"SELECT tbl_wisata.id,tbl_wisata.nama,tbl_wisata.gambar,tbl_wisata.isi,tbl_wisata.lokasi,tbl_wisata.jambuka,tbl_kategori.kategori,tbl_subkategori.subkategori from tbl_wisata,tbl_kategori,tbl_subkategori where tbl_wisata.kategori = tbl_kategori.id and tbl_wisata.subkategori = tbl_subkategori.id and tbl_subkategori.subkategori = '$subkategori'  limit 0,4");
	while ($dpantai = mysqli_fetch_array($pantai)) {
	?>
	<li class="tw-item"><div class="img-wrap"><img src="images/<?=$dpantai['gambar']?>"></div><p class="alam"><a href="artikel-alam.php?id=<?=$dpantai['id']?>"><?=$dpantai['nama']?></a></p></li>
	<?php
	}
	?>
	</ul>
</div>

<div id="footer">
	<table class="menufoot">
		<tr>
		<td class="bukutamu">
			<h2>Buku Tamu</h2>
			<table>
				<tr><td>NAMA</td><td><input type="text"></input></td></tr>
				<tr><td>EMAIL</td><td><input type="text"></input></td></tr>
				<tr><td>KOMENTAR</td><td><textarea></textarea></td></tr>
				<tr><th colspan="2"><input type="submit"></input></th></tr>
			</table>
		</td>
		<td class="navigasi"><h2>navigasi</h2>
		<ul>
			<li><a href="">home</a></li>
			<li><a href="">about</a></li>
			<li><a href="">tos</a></li>
			<li><a href="">privasi</a></li>
			<li><a href="">kontak kami</a></li>
		</ul>
		</td>
		<td class="kontakkami"><h2>Kontak kami</h2>
		<p>JL.Kedungpedaringan No 9 RT 9 RW 9 Kode Pos 65163 Kedungpedaringan Kepanjen Malang Jawa Timur</p>
					<br><img src="img/phoneico.png" width="20px" height="20px"> : 0852001002003<br><img src="img/bbm.png" width="20px" height="20px"> : IMALANG<br><img src="img/fbico.png" width="20px" height="20px"> : IKILO MALANG<br> <img src="img/igico.png" width="20px" height="20px"> : IMALANG<br> <img src="img/twitterico.png" width="20px" height="20px"> : @ikilomalang
		</td>
		</tr>
	</table>
	<h4>ikilomalang.com | copyright | designed by wazirul azzan</h4>
</div>
</body>
</html>