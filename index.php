<?php
session_start();
include('koneksi.php');
include('konten/header.html'); ?>

<div id="wrapper">
    
<?php 
if (empty($_SESSION['username'])) {
    include('konten/login.php');
} else {
?>
    <?php include('konten/nav.html'); ?>

    <div id="page-wrapper">
        <?php include('atur-konten.php'); ?>
    </div>

<?php } ?>
</div>

<?php include('konten/footer.html'); ?>