<?php
include_once "../bukan_file_config.php";
$id = $_GET['id'];
$kueri = $lala->query("select * from tbl_artikel where id = '$id'");
$boxs = $kueri->fetch();
?>
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
				<tr><td><li><a href="polling_tambah.php">Tambah Polling</s></li></td></tr>
				<tr><td><li><a href="polling_tampil.php">Edit Polling</a></li></td></tr>
				<tr><td><li><a href="logout.php">Logout</a></li></td></tr>
				</ul>
				</table>
				</td>
				<td width="616" valign="top">
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Edit Artikel</center></td></tr>
					</table>
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<form method="post">
						<tr><td>Judul:</td><td><input style="width: 350px;" type="text" name="judul" value="<?=$boxs['judul']?>"
						maxlength="400"></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Kategori:</td><td><input style="width: 350px"; type="text" name="kategori" maxlength="255"
						value="<?=$boxs['kategori']?>"></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Headline:</td><td><textarea name="headline" cols="60" rows="10" maxlength="600">
						<?=$boxs['headline']?></textarea></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Isi Artikel:</td><td><textarea name="isiartikel" cols="60" rows="10">
						<?=$boxs['isiartikel']?></textarea></td></tr>
						<tr><td>&nbsp;</td></tr>
						<tr><td>Pengirim:</td><td><input type="text" name="pengirim" value="<?=$boxs['pengirim']?>"></td></tr>
						<input type="hidden" name="idku" value="<?=$id?>">
						<tr><td>&nbsp;</td></tr>
						<tr><td><input type="submit" name="kirim" value="Kirim"></td></tr>
						</form>
					</table>
					<?php
					if(isset($_POST['kirim'])){
						include_once "../bukan_file_config.php";
						$idku = $_POST['idku'];
						$judul = addslashes(htmlspecialchars($_POST['judul']));
						$kategori = addslashes(htmlspecialchars($_POST['kategori']));
						$headline = addslashes(htmlspecialchars($_POST['headline']));
						$isiartikel = addslashes($_POST['isiartikel']);
						$pengirim = addslashes(htmlspecialchars($_POST['pengirim']));
						$tgl = date('Y-m-d');
						
						$kueri = $lala->exec("update tbl_artikel set judul = '$judul', kategori = '$kategori', headline = '$headline', 
						isiartikel = '$isiartikel', pengirim = '$pengirim', tgl = '$tgl' where id = '$idku'");
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