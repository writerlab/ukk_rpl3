<h1>
  Data Ruangan
  <a href="?menu=tambah-ruangan">Tambah</a>
</h1>
<table class="table">
  <thead>
    <tr>
      <th>NO.</th>
      <th>NAMA</th>
      <th>KODE</th>
      <th>KETERANGAN</th>
      <th>AKSI</th>
    </tr>
  </thead>

  <tbody>
    <?php
    $q = mysqli_query($konek, "select * from ruang");
    $no = 0;
    while($row = mysqli_fetch_array($q)) { 
      $no++;
    ?>
    <tr>
      <td><?php print $no?></td>
      <td><?php print $row[1]?></td>
      <td><?php print $row[2]?></td>
      <td><?php print $row[3]?></td>
      <td>
        <a href="#">ubah</a>
        <a href="#">hapus</a>
      </td>
    </tr>
    <?PHP } ?>
  </tbody>
</table>