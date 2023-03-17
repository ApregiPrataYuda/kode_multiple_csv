<section class="content">
    <div id="flash" data-flash="<?= $this->session->flashdata('pesan') ?>">
      <div id="flasherr" data-flasherr="<?= $this->session->flashdata('error') ?>">
        <!-- Default box -->
        <div class="card">
          <div class="card-header" style="background-color:RGB(40, 178, 170);">
            <h3 class="card-title  text-light">tampil brg</h3>

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
                <a href="<?= site_url('ex_csv/export') ?>" class="btn btn-outline-info btn-sm"> <i class="fa fa-excel"> Export Data</i></a>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col" style="width:15%">kode brg</th>
                      <th scope="col">nama brg</th>
                      <th scope="col" style="width:3%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                 <?php
                  $no=1;
                  foreach ($row as $key => $d) { ?>
                      <tr>
                        <td><?= $no++ ?></td>
                        <td><?= $d->kode_barang?></td>
                        <td><?= $d->nama_barang?></td>
                        <td>
                            <a href="" class="btn btn-sm btn-success">edit</a>
                        </td>
                      </tr>
                 <?php }?>
                   
                    
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