<?php
include "cekbosku.php";
include_once "../bukan_file_config.php";
$idx = $_GET['id'];
$kueri = $lala->exec("delete from tbl_artikel where id = '$idx'");
if($kueri){
	echo '<meta http-equiv="refresh" content="0; url=artikel_tampil.php">';
}
else {
	echo "<script>alert('Gagal');</script>";
	include "artikel_tampil.php";
}
?>