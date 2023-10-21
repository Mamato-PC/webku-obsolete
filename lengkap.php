<?php
include_once "bukan_file_config.php";
?>
<html>
	<head>
		<script src="salju.js"></script>
		<link rel="stylesheet" href="gayaindex.css" type="text/css">
		<link rel="icon" href="favicon.ico" type="image/ico">
		<meta name="author" content="Shikata_Ga_Nai">
		<meta name="keyword" content="website, nothing to do, php, pribadi, n00b">
		<meta name="description" content="Weblognya Shikata_Ga_Nai, mampir dong kesini.">
		<title>Artikel</title>
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
					<tr bgcolor="#333333"><td><center>Artikel</center></td></tr>
				<?php
				$id = addslashes($_GET['id']);
				$lihat = $lala->query("select * from tbl_artikel where id = '$id'");
				$row = $lihat->fetch();
				?>
				<tr>
					<td><font size="5"><?=$row['judul']?></font></td>
				</tr>
				<tr>
					<td><b>Diposting tanggal:</b> <?=$row['tgl']?></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td class="ganteng"><?=nl2br($row['isiartikel']);?></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				<tr>
					<td><b>Pengirim:</b> <?=$row['pengirim']?></td>
				</tr>
				<tr><td>&nbsp;</td></tr>
				</table>
				</td>
				<td width="300" valign="top">
				<table width="300" border="0" cellpadding="0" cellspacing="1">
				<tr bgcolor="#333333"><td><center>Menu</td></tr>
				<ul>
				<tr><td><li><a href="index.php">Home</a></li></td></tr>
				<tr><td><li><a href="bukutamu.php">Bukutamu</a></li></td></tr>
				<tr><td><li><a href="aboutme.php">About Me</a></li></td></tr>
				</ul>
				</table>
				<?php include "polling.php"; ?>
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