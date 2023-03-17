<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h3><span class="badge badge-secondary"> <?= $title?></span></h3>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a class="text-info" href="<?=site_url('Dashboard')?>"><u class="badge badge-secondary">Kembali ke Dashboard</u> </a></li>
        </ol>
      </div>
    </div>
  </div><!-- /.container-fluid -->
</section>

<!-- view for admin it -->
<section class="content">
    <div id="flash" data-flash="<?= $this->session->flashdata('pesan') ?>">
      <div id="flasherr" data-flasherr="<?= $this->session->flashdata('error') ?>">
        <!-- Default box -->
        <div class="card">
          <div class="card-header" style="background-color:RGB(40, 178, 170);">
            <h3 class="card-title  text-light"><?= $title?></h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-body">
            <div class="card">
              <div class="card-header">
                <a href="<?= site_url('Products/add') ?>" class="btn btn-outline-info btn-sm"> <i class="fa fa-plus-square"> Tambah Data</i></a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col" style="width:15%">kode_product</th>
                      <th scope="col">nama_product</th>
                      <th scope="col">harga_total</th>
                      <th scope="col">total_qty</th>
                      <th scope="col" style="width:3%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                    $no=1;
                     foreach ($row as $key => $data) { ?>
                     <tr>
                      <td><?= $no++?>.</td>
                      <td><?= $data->kode_product?></td>
                      <td><?= $data->nama_product?></td>
                      <td><?= $data->harga_total?></td>
                      <td><?= $data->total_qty?></td>
                      <td><a href="" id="btn-hapus" class="btn btn-danger btn-xs"> <i class="fa fa-trash"></i> </a>
                     <a href="" class="btn btn-warning btn-xs"> <i class="fa fa-edit"></i> </a>
                     <a href="<?=site_url('Products/Products_detail/'.$data->kode_product)?>" class="btn btn-info btn-xs"><i class="fa fa-info-circle"></i></a></td>
                    
                     </tr>
                    <?php } ?>
                   
                    
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          </div>
          <!-- /.card-body -->
          <div class="card-footer">
            <!-- <p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds. <?php echo (ENVIRONMENT === 'development') ?  'CodeIgniter Version <strong>' . CI_VERSION . '</strong>' : '' ?></p> -->
          </div>
          <!-- /.card-footer-->
        </div>
        <!-- /.card -->

  </section>