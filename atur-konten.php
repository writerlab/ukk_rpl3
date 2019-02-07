<?php 
if ($_GET['menu'] == 'home') {
  include('konten/home.php');
}
elseif ($_GET['menu'] == 'inventaris') {
  include('konten/inventaris.php');
}
elseif ($_GET['menu'] == 'jenis-barang') {
  include('konten/jenis-barang.php');
}
