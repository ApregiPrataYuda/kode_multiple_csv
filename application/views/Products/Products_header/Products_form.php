<section class="content-header ml-4">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1></h1>
        <!-- <h3><span class="badge badge-secondary">Master Class Form Tambah</span></h3> -->
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a class="text-secondary" href="<?= site_url('') ?>"><span class="badge badge-outline-secondary">Kembali</span></a></li>
          <!-- <li class="breadcrumb-item"><span class="badge badge-secondary">Master Class Form</span></a></li> -->
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>

<section class="content col-md-12">
  <!-- general form elements disabled -->
  <div class="card card-secondary">
    <div class="card-header" style="background-color:RGB(40, 178, 170);">
      <h3 class="card-title">Tambah Data</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
  
      <form action="" method="post">
      <table class="table table-bordered">
  <thead class="thead-light">
    <tr>
      <th scope="col">kode_product</th>
      <th scope="col">nama_product</th>
    </tr>
  </thead>
  <tbody>
  <?php  for($i=1; $i<=$banyak_data;$i++): ?>
   <tr>
    <div class="col-md-10 form-group">
            <td <?= form_error('kode_product') ? '' : null ?>><input name="kode_product[]"  class="form-control"/>
            <small class="text-danger" style="font-style: italic "><span class="badge badge-danger"><?= form_error('kode_product') ?></span></small>
            </td>
            <td <?= form_error('nama_product') ? '' : null ?>><input name="nama_product[]" class="form-control" />
            <small class="text-danger" style="font-style: italic "><span class="badge badge-danger"><?= form_error('nama_product') ?></span></small></td>
        </div>
        </tr>
        <?php endfor ?>
  </table>
    </div>
     <div class="row ml-auto mb-3 mr-5 mt-3">
          <button type="submit" class="btn btn-outline-secondary btn-sm ml-2"> <i class="fa fa-save"></i> Simpan</button>
        </div>
      </form>
    <!-- /.card-body -->
  </div>
</section>

