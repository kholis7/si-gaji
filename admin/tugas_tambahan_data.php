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
                <th>TUGAS TAMBAHAN</th>
                <th>NAMA GURU</th>
                <th>HONOR</th>
                <th>OPSI</th>
              </tr>
            </thead>
            <tbody>
              <tr>
              <?php 
                $dt_tgs_tambahan = mysqli_query($koneksi,"SELECT * FROM tb_tugas_tambahan
                INNER JOIN tb_guru ON tb_tugas_tambahan.id_guru = tb_guru.id_guru
                ");
                $no = 1;
                while ($tugas=mysqli_fetch_array($dt_tgs_tambahan)){
              ?>
                <td align="center"><?php echo $no++; ?></td>
                <td><?php echo $tugas['nm_tugas']; ?></td>
                <td><?php echo $tugas['nm_guru']; ?></td>
                <td><?php echo $tugas['gaji']; ?></td>
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