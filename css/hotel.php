<?php
include 'admin/conn.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>
<link rel="stylesheet" type="text/css" href="css/hotel.css">
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
	<span class="inside"><h1>IKILO MALANG</h1>		
		<p>Ikilo Malang berupaya memberikan kemudahan kepada para wisatawan ketika berkunjung ke area Malang Raya.<br> Dengan adanya netizen, Ikilo Malang akan terus 	berkembang dan bercitra sebagai Media Partner di Kota Malang. Thanks for all visitor!
	</p></span>
	<figure>
		<img src="img/hotelimg.jpg">
	</figure>
</div>


<div id="wisata">
	<h1>hotel dimalang</h1>
	<ul class="tw-box">
		<li class="tw-item"><div class="img-wrap"><img src="img/Gunung-Bromo.jpg"></div><p class="borderh"><a href="">traveloka</a></p></li>
		<li class="tw-item"><div class="img-wrap"><img src="img/jatim2.jpg"></div><p class="borderh"><a href="">tiket</a></p></li>
		<li class="tw-item"><div class="img-wrap"><img src="img/ckidal.jpg"></div><p class="borderh"><a href="">traviago</a></p></li>
		<li class="tw-item"><div class="img-wrap"><img src="img/miiblis.jpg"></div><p class="borderh"><a href="">wisata kuliner</a></p></li>
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