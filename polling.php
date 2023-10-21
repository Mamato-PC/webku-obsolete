<?php
include_once "bukan_file_config.php";

$kueri = $lala->query("select * from tbl_polling where status = 'Y' limit 1");
$flux = $kueri->fetch();
$blob = $flux['hasil1'] + $flux['hasil2'] + $flux['hasil3'] + $flux['hasil4'];
?>
<html>
<head>
<link rel="stylesheet" href="gayaindex.css" type="text/css">
</head>
<body>
<br>
<table width="300" border="0" cellpadding="0" cellspacing="1">
<tr bgcolor="#333333"><td><center>Polling</center></td></tr>
</table>
<table width="300" border="0" cellpadding="0" cellspacing="1">
<form method="post">
<tr><td><input type="hidden" name="idx" value="<?=$flux['id']?>">
<?=$flux['pertanyaan']?></td></tr>
<tr><td><input type="radio" name="akulagi" value="o"><?=$flux['jawab1']?></td></tr>
<tr><td><input type="radio" name="akulagi" value="p"><?=$flux['jawab2']?></td></tr>
<tr><td><input type="radio" name="akulagi" value="q"><?=$flux['jawab3']?></td></tr>
<tr><td><input type="radio" name="akulagi" value="r"><?=$flux['jawab4']?></td></tr>
<tr><td><input type="submit" name="vote" value="Pilih"></td></tr>
<tr><td>Pemilih:&nbsp;<?=$blob?></td></tr>
<tr><td><a href="hasil.php?id=<?=$flux['id']?>">Lihat hasil</a></td></tr>
</form>
</table>
<?php
if(isset($_POST['vote'])){
include_once "bukan_file_config.php";
$idx = $_POST['idx'];
$aku = $_POST['akulagi'];
$kri = $lala->query("select * from tbl_polling where id = '$idx'");
$fet = $kri->fetch();

switch($aku){
	case 'o':
		$tex = $fet['hasil1'] + 1;
		$tambah = "hasil1 = '$tex'";
		break;
	case 'p':
		$tex = $fet['hasil2'] + 1;
		$tambah = "hasil2 = '$tex'";
		break;
	case 'q':
		$tex = $fet['hasil3'] + 1;
		$tambah = "hasil3 = '$tex'";
		break;
	case 'r':
		$tex = $fet['hasil4'] + 1;
		$tambah = "hasil4 = '$tex'";
		break;
	default: break;
}

$update = $lala->exec("update tbl_polling set ".$tambah." where id = '$idx'");
if($update){
	echo "Berhasil";
}
else {
	echo "Gagal";
}
}
?>