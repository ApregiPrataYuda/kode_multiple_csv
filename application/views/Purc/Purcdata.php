<section class="content-header ml-4">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Purc</h1>
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




<!-- view for admin it -->
<section class="content">
    <div id="flash" data-flash="<?= $this->session->flashdata('pesan') ?>">
      <div id="flasherr" data-flasherr="<?= $this->session->flashdata('error') ?>">
        <!-- Default box -->
        <div class="card">
          <div class="card-header" style="background-color:RGB(40, 178, 170);">
            <h3 class="card-title  text-light"></h3>

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
              <div class="row">
              </div>
              <!-- /.card-header -->
              <div class="card-body">
               
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col">Tanggal</th>
                      <th scope="col">No Nota</th>
                      <th scope="col">No Po</th>
                      <th scope="col">QTY</th>
                      <th scope="col">Total Harga</th>
                      <th scope="col" style="width:5%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; foreach ($row as $key => $data) { ?>
                      <tr>
                        <td><?= $no++?></td>
                        <td><?= $data->tanggal?></td>
                        <td><?= $data->no_nota?></td>
                        <td><?= $data->no_po?></td>
                        <td><?= $data->total_qty?></td>
                        <td><?= $data->total_harga?></td>
                        <td>
                            <a href="<?= site_url('Purc/detail/'.$data->no_nota)?>" class="btn btn-sm btn-primary">Detail</a>
                        </td>
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