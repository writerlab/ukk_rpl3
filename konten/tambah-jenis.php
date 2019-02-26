<?php
if (isset($_POST['simpan'])) {
  $nama = $_POST['nama'];
  $kode = $_POST['kode'];
  $keterangan = $_POST['keterangan'];

  mysqli_query($konek, "insert into jenis values(NULL, '$nama', '$kode', '$keterangan')");
  
  $pesan = "<div class='alert alert-success'>Data berhasil disimpan</div>";
}
?>


<h1>
  Tambah Jenis Barang
</h1>
<?php print $pesan; ?>
<form action="" method="post">
  <div class="form-group">
    <input type="text" name="nama" class="form-control" required placeholder="Nama jenis">
  </div>
  <div class="form-group">
    <input type="text" name="kode" class="form-control" required placeholder="Kode barang">
  </div>
  <div class="form-group">
    <textarea name="keterangan" class="form-control" cols="30" rows="5" required></textarea>
  </div>
  <button type="submit" name="simpan" class="btn btn-info">Simpan</button>
</form>