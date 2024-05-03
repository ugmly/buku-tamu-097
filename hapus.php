<?php
include "koneksi.php";

$id = $_GET['id'];

$hapus = mysqli_query($koneksi,"DELETE FROM ttamu WHERE id='$id'");


if ($hapus) {
  echo "<script> alert ('Hapus Data Sukses, Terima Kasih...!')</script>";
  header("refresh:0;admin.php");
} else {
  echo "<script> alert ('Hapus Data Sukses, Terima Kasih...!')</script>";
  header("refresh:0;admin.php");
}

?>