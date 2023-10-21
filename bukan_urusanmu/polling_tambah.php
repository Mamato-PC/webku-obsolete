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
				<tr><td><li><a href="polling_tambah.php">Tambah Polling</a></li></td></tr>
				<tr><td><li><a href="polling_tampil.php">Edit Polling</a></li></td></tr>
				<tr><td><li><a href="logout.php">Logout</a></li></td></tr>
				</ul>
				</table>
				</td>
				<td width="616" valign="top">
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<tr bgcolor="#333333"><td><center>Tambah Materi Polling</center></td></tr>
					</table>
					<table width="800" border="0" cellpadding="0" cellspacing="1">
						<form method="post">
						<tr><td>Pertanyaan:&nbsp;<input style="width: 450px;" type="text" name="tanya"></td></tr>
						<tr><td>Pilihan 1:&nbsp;<input type="text" name="pilih1"></td></tr>
						<tr><td>Pilihan 2:&nbsp;<input type="text" name="pilih2"></td></tr>
						<tr><td>Pilihan 3:&nbsp;<input type="text" name="pilih3"></td></tr>
						<tr><td>Pilihan 4:&nbsp;<input type="text" name="pilih4"></td></tr>
						<tr><td>Status aktif:&nbsp;<input type="radio" name="aku" value="Y">Ya<input type="radio" name="aku" value="N" checked>Tidak</td></tr>
						<tr><td><input type="submit" name="kirim" value="Kirim"></td></tr>
						</form>
					</table>
					<?php
					if(isset($_POST['kirim'])){
						include_once "../bukan_file_config.php";
					
						$tanya = addslashes(htmlspecialchars($_POST['tanya']));
						$pilih1 = addslashes(htmlspecialchars($_POST['pilih1']));
						$pilih2 = addslashes(htmlspecialchars($_POST['pilih2']));
						$pilih3 = addslashes(htmlspecialchars($_POST['pilih3']));
						$pilih4 = addslashes(htmlspecialchars($_POST['pilih4']));
						$aku = $_POST['aku'];
					
						$kueri = $lala->exec("insert into tbl_polling(pertanyaan, jawab1, jawab2, jawab3, jawab4, status)
						values('$tanya', '$pilih1', '$pilih2', '$pilih3', '$pilih4', '$aku')");
						if($kueri){
							echo '<meta http-equiv="refresh" content="0; url='.$_SERVER['PHP_SELF'].'">';
						}
						else {
							echo "<script>alert('Gagal');</script>";
							echo '<meta http-equiv="refresh" content="0; url='.$_SERVER['PHP_SELF'].'">';
						}
					}
					?>
				</td>
			</tr>
		</table>
	</body>
</html>