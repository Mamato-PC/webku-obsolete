<?php
include_once "bukan_file_config.php";

$idku = $_GET['id'];
$kueri = $lala->query("select * from tbl_polling where status = 'Y' and id = '$idku'");
$hasil = $kueri->fetch();

$nilai1 = $hasil['hasil1'];
$nilai2 = $hasil['hasil2'];
$nilai3 = $hasil['hasil3'];
$nilai4 = $hasil['hasil4'];

$jmlh = $nilai1 + $nilai2 + $nilai3 + $nilai4;
if($jmlh == 0){
	$hasil1 = 0;
	$hasil2 = 0;
	$hasil3 = 0;
	$hasil4 = 0;
}
else {
	$hasil1 = round(($nilai1/$jmlh) * 100, 2);
	$hasil2 = round(($nilai2/$jmlh) * 100, 2);
	$hasil3 = round(($nilai3/$jmlh) * 100, 2);
	$hasil4 = round(($nilai4/$jmlh) * 100, 2);
}
?>
<html>
	<head>
		<script src="salju.js"></script>
		<link rel="stylesheet" href="gayaindex.css" type="text/css">
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="author" content="Shikata_Ga_Nai">
		<meta name="keyword" content="website, nothing to do, php, pribadi, n00b">
		<meta name="description" content="Weblognya Shikata_Ga_Nai, mampir dong kesini.">
		<title>Welcome to my blog</title>
	</head>
	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
			<tr>
				<td><h1>Shikata_Ga_Nai</h1></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td width="300" valign="top">
				<table width="244" border="0" cellpadding="0" cellspacing="1">
				<tr bgcolor="#333333"><td><center>Links</center></td></tr>
				<ul>
				<tr><td><li><a href="https://www.youtube.com/results?search_query=falahgo5" target="_blank">FalahGo5</a></li></td></tr>
				<tr><td><li><a href="https://myheart-isyr.blogspot.com" target="_blank">MyHeart IsYours</a></li></td></tr>
				<tr><td><li><a href="https://www.youtube.com/results?search_query=zhafif+syauqy" target="_blank">Zhafif Syauqy</a></li></td></tr>
				</ul>
				</table>
				<?php include "kategori.php"; ?>
				</td>
				<td width="700" valign="top">
				<table width="800" border="0" cellpadding="0" cellspacing="1">
					<tr bgcolor="#333333"><td><center>Grafik Polling</center></td></tr>
					<tr>
						<td><?=$hasil['pertanyaan']?></td>
					</tr>
					<tr>
						<td><img src="grafik.jpg" width="<?=$hasil1?>" height="15">
						<?=$hasil1."%"?><br>
						<?=$hasil['jawab1']?></td>
					</tr>
					<tr>
						<td><img src="grafik.jpg" width="<?=$hasil2?>" height="15">
						<?=$hasil2."%"?><br>
						<?=$hasil['jawab2']?></td>
					</tr>
					<tr>
						<td><img src="grafik.jpg" width="<?=$hasil3?>" height="15">
						<?=$hasil3."%"?><br>
						<?=$hasil['jawab3']?></td>
					</tr>
					<tr>
						<td><img src="grafik.jpg" width="<?=$hasil4?>" height="15">
						<?=$hasil4."%"?><br>
						<?=$hasil['jawab4']?></td>
					</tr>
				</table>
				</td>
				<td width="300" valign="top">
				<table width="300" border="0" cellpadding="0" cellspacing="1">
				<tr bgcolor="#333333"><td><center>Menu</center></td></tr>
				<ul>
				<tr><td><li><a href="index.php">Home</a></li></td></tr>
				<tr><td><li><a href="bukutamu.php">Bukutamu</a></li></td></tr>
				<tr><td><li><a href="aboutme.php">About Me</a></li></td></tr>
				</ul>
				</table>
				<?php include_once "polling.php"; ?>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="1">
			<tr>
				<td><h3>Anti-(C)opyright Shikata_Ga_Nai</h3></td>
			</tr>
		</table>
	</body>
</html>