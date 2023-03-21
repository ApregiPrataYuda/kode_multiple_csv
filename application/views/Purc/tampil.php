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
			<div class="col-lg-6 col-md-6 col-sm-12">
				<table style="width: 100%;">
					<tr>
						<td style="width: 40%;">No Nota</td>
						<td>: <?php echo $header->no_nota ?></td>
					</tr>
					<tr>
						<td style="width: 40%;">No PO</td>
						<td>: <?php echo $header->no_po ?></td>
					</tr>
					<tr>
						<td style="width: 40%;">Supplier</td>
						<td>: <?php echo $header->kode_supl ?> </td>
					</tr>
					<tr>
						<td style="width: 40%;">Tanggal</td>
						<td>: <?php echo $header->tanggal ?></td>
					</tr>
				</table>
			</div>


            <div class="col-lg-6 col-md-6 col-sm-12">
				<table style="width: 100%;">
					<tr>
						<td style="width: 40%;">Total qty</td>
						<td>: <?php echo $header->total_qty ?></td>
					</tr>
					<tr>
						<td style="width: 40%;">Total Harga</td>
						<td>: <?php echo $header->total_harga ?></td>
					</tr>
					
				</table>
			</div>

              </div>
              <!-- /.card-header -->
              <div class="card-body">
               
            




                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col">Nama Barang</th>
                      <th scope="col">QTY</th>
                      <th scope="col">Harga</th>
                      <th scope="col">Total Harga</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; foreach ($row as $key => $value) { ?>
                      <tr>
                        <td><?=$no++?></td>
                         <td><?= $value->nama?></td>
                         <td><?= $value->qty?></td>
                         <td><?= $value->harga?></td>
                         <td><?= $value->harga * $value->qty?></td>
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