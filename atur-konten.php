<?php 
if ($_GET['menu'] == 'home') {
  include('konten/home.php');
}
elseif ($_GET['menu'] == 'jenis-barang') {
  include('konten/jenis-barang.php');
}
elseif ($_GET['menu'] == 'tambah-jenis') {
  include('konten/tambah-jenis.php');
}
elseif ($_GET['menu'] == 'inventaris') {
  include('konten/inventaris.php');
}
elseif ($_GET['menu'] == 'ruangan') {
  include('konten/ruangan.php');
}
elseif ($_GET['menu'] == 'keluar') {
  session_start();
  session_destroy();
  header('Location: index.php');
}