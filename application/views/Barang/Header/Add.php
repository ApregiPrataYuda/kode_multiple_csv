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
        <div class="row">

          <div class="col-md-3">
            <label><span class="badge badge-outline-secondary text-sm"> Kode*</span> </label>
            <input class="form-control" type="text" Value="<?= $kodex?>" name="kode_barang" readonly>
          </div>

          <div class="col-md-8 <?= form_error('nama_barang') ? '' : null ?>">
            <label><span class="badge badge-outline-secondary text-sm"> Nama Barang*</span> </label>
            <input class="form-control" type="text" Value="" name="nama_barang">
            <small class="text-danger" style="font-style: italic "><span class="badge badge-danger"><?= form_error('nama_barang') ?></span></small>
          </div>
        </div>

        <div class="row">
        <div class="col-md-6 mt-2 <?= form_error('keterangan') ? '' : null ?>">
            <label><span class="badge badge-outline-secondary text-sm"> keterangan*</span> </label>
           <textarea class="form-control" name="keterangan" id="keterangan" cols="30" rows="10"></textarea>
           <small class="text-danger" style="font-style: italic "><span class="badge badge-danger"><?= form_error('keterangan') ?></span></small>
          </div>
        </div>

        <div class="row ml-auto mb-3 mr-5 mt-3">
          <button type="submit" name="add" class="btn btn-outline-secondary btn-sm"><i class="fa fa-save"></i> Simpan</button>
        </div>
      </form>
    </div>
    <!-- /.card-body -->
  </div>
</section>

