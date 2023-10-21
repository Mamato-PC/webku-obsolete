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
				<td width="700">
				<table width="800" border="0" cellpadding="0" cellspacing="1">
					<form method="post">
					<tr bgcolor="#333333"><td><center>Bukutamu</center></td></tr>
					<tr><td>Nama:&nbsp;<input type="text" name="nama" maxlength="50"></td></tr>
					<tr><td>Email:&nbsp;<input type="text" name="email" maxlength="45"></td></tr>
					<tr><td>Pesan:</td></tr>
					<tr><td><textarea name="pesan" cols="50" rows="5" maxlength="60"></textarea></td></tr>
					<tr><td><input type="submit" name="kirim" value="Kirim"></td></tr>
					</form>
				</table>
				<?php
				if(isset($_POST['kirim'])){
					include_once "bukan_file_config.php";
					$nama = htmlspecialchars($_POST['nama']);
					$email = htmlspecialchars($_POST['email']);
					$pesan = htmlspecialchars($_POST['pesan']);
					$tgl = date('Y-m-d');
					
					if($nama == ""){
						echo "<script>alert('Duh, isi dulu dong namanya');</script>";
					}
					else if($email == ""){
						echo "<script>alert('Duh, isi juga dong emailnya');</script>";
					}
					else if($pesan == ""){
						echo "<script>alert('Masa gak ngasih kesan pesan??');</script>";
					}
					
					$kueri = $lala->exec("insert into tbl_bukutamu(nama, email, pesan, tgl) 
					values('$nama', '$email', '$pesan', '$tgl')");
					if($kueri){
						echo '<meta http-equiv="refresh" content="0; url='.$_SERVER['PHP_SELF'].'">';
					}
					else {
						echo '<script>alert("Gagal")</script>';
						echo '<meta http-equiv="refresh" content="0; url='.$_SERVER['PHP_SELF'].'">';
					}
				}
				else {
					echo '<table width="800" border="0" cellpadding="0" cellspacing="1">
					<tr bgcolor="#333333"><td><center>Semua pesan</center></td></tr>';
					
					include_once "bukan_file_config.php";
					$kueri = $lala->query("select * from tbl_bukutamu order by id");
					foreach($kueri as $tampil){
						echo "<tr><td>Nama: ".$tampil['nama']."</td></tr>";
						echo "<tr><td>Email: ".$tampil['email']."</td></tr>";
						echo "<tr><td>Pesan: ".nl2br($tampil['pesan'])."</td></tr>";
						echo "<tr><td>&nbsp;</td></tr>";
					}
					echo "</table>";
				}
				?>	
				</td>
				<td width="300" valign="top">
				<table width="300" border="0" cellpadding="0" cellspacing="1">
				<tr bgcolor="#333333"><td><center>Menu</center></td></tr>
				<tr><td><a href="index.php">Home</a></td></tr>
				<tr><td><a href="bukutamu.php">Bukutamu</a></td></tr>
				<tr><td><a href="aboutme.php">About Me</a></td></tr>
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