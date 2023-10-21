<?php include "cekbosku.php"; ?> 
<html>
	<head>
		<link rel="stylesheet" href="gayaadmin.css" type="text/css">
		<title>Admin Page</title>
	</head>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td><h1>Admin Page</h1></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="1">
			<tr>
				<td width="240" valign="top">
				<table width="240" border="0" cellpadding="0"  cellspacing="1">
				<tr bgcolor="#333333"><td><center>Menu</center></td></tr>
				<ul>
				<tr><td><li><a href="index.php">Home</a></li></td></tr>
				<tr><td><li><a href="artikel_tambah.php">Tambah Artikel</a></li></td></tr>
				<tr><td><li><a href="artikel_tampil.php">Edit Artikel</a></li></td></tr>
				<tr><td><li><a href="bukutamu_edit.php">Edit Bukutamu</a></li></td></tr>
				<tr><td><li><a href="edit_admin.php">Edit Admin</a></li></td></tr>
				<tr><td><li><a href="polling_tambah">Tambah Polling</a></li></td></tr>
				<tr><td><li><a href="polling_tampil.php">Edit Polling</a></li></td></tr>
				<tr><td><li><a href="logout.php">Logout</a></li></td></tr>
				</ul>
				</table>
				</td>
				<td width="616" valign="top">
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Tambah Artikel</center></td></tr>
					</table>
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<form method="post">
						<tr><td>Judul:</td><td><input style="width: 350px;" type="text" name="judul" maxlength="400"></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Kategori:</td><td><input style="width: 350px"; type="text" name="kategori" maxlength="255"></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Headline:</td><td><textarea name="headline" cols="60" rows="10" maxlength="300"></textarea></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Isi Artikel:</td><td><textarea name="isiartikel" cols="60" rows="10"></textarea></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Pengirim:</td><td><input type="text" name="pengirim"></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td><input type="submit" name="kirim" value="Kirim"></td></tr>
						</form>
					</table>
					<?php
					if(isset($_POST['kirim'])){
						include_once "../bukan_file_config.php";
						$judul = addslashes(htmlspecialchars($_POST['judul']));
						$kategori = addslashes(htmlspecialchars($_POST['kategori']));
						$headline = addslashes(htmlspecialchars($_POST['headline']));
						$isiartikel = addslashes($_POST['isiartikel']);
						$pengirim = addslashes(htmlspecialchars($_POST['pengirim']));
						$tgl = date('Y-m-d');
						
						$kueri = $lala->exec("insert into tbl_artikel(judul, kategori, headline, isiartikel, pengirim, tgl)
						values('$judul', '$kategori', '$headline', '$isiartikel', '$pengirim', '$tgl')");
						if($kueri){
							echo "Berhasil";
							echo '<meta http-equiv="refresh" content"3; url='.$_SERVER['PHP_SELF'].'">';
						}
						else {
							echo "<script>alert('gagal');</script>";
							echo '<meta http-equiv="refresh" content"0; url='.$_SERVER['PHP_SELF'].'">';
						}
					}
					?>
				</td>
			</tr>
		</table>
	</body>
</html>