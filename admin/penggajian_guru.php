<?php
include "header.php";

?>
<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Data Guru</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
      <div class="card-header py-3">
        <a href=""><h6 class="m-0 font-weight-bold text-primary">Tambah Data</h6></a>
        
      </div>
      <div class="card-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
              <tr>
                <th>NO</th>
                <th>NAMA GURU</th>
                <th>KEHADIRAN</th>
                <th>GAJI</th>
                <th>OPSI</th>
              </tr>
            </thead>
            <tbody>
              <tr>
              <?php 
                $dt_guru = mysqli_query($koneksi,"SELECT * FROM tb_absen
                INNER JOIN tb_guru ON tb_guru.id_guru = tb_absen.id_guru
                INNER JOIN tb_honor ON tb_guru.jenis_guru = tb_honor.id_honor
                ");
                $no = 1;
                while ($guru=mysqli_fetch_array($dt_guru)){
              ?>
                <td align="center"><?php echo $no++; ?></td>
                <td><?php echo $guru['nm_guru'] . ', ' . $guru['gelar']; ?></td>
                <td>
                  <?php
                    $jml_absen = mysqli_query($koneksi, "SELECT id_guru from tb_absen SUM (keterangan) GROUP BY id_guru INNER JOIN
                    ");
                    echo ($jml_absen);
                  ?> 
                </td>
                <td><?php echo "Rp. ".number_format($guru['honor']) ." ,-"; ?></td>
                <td>
                <a href="#" class="btn btn-primary btn-icon-split btn-sm">
                  <span class="icon text-white-50">
                    <i class="fas fa-edit"></i>
                  </span>
                  <span class="text">Edit</span>
                </a>
                <a href="masyarakat_hapus.php?nik=<?php echo $masyarakat ['nik']; ?>" class="btn btn-danger btn-icon-split btn-sm">
                  <span class="icon text-white-50">
                    <i class="fas fa-trash"></i>
                  </span>
                  <span class="text">Hapus</span>
                </a>
                </td>
                </td>
              </tr>
              <?php
                }
                ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
</div>
<!-- /.container-fluid -->
<?php
include "footer.php";
?>