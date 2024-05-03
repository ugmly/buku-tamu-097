<?php
include "koneksi.php";

$id = $_POST ['id'];
$nama = $_POST ['nama'];
$alamat = $_POST ['alamat'];
$tujuan = $_POST ['tujuan'];
$nope = $_POST ['nope'];

$update = mysqli_query($koneksi, "UPDATE ttamu SET nama='$nama', alamat='$alamat', tujuan='$tujuan',nope='$nope' WHERE id='$id'");

if ($update) {
  echo "<script> alert ('Ubah Data Sukses, Terima Kasih...!')</script>";
  header("refresh:0;admin.php");
} else {
  echo "<script> alert ('Ubah Data Sukses, Terima Kasih...!')</script>";
  header("refresh:0;admin.php");
}

?>