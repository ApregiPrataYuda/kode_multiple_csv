<section class="content-header ml-4">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Purchase</h1>
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


<form action="<?= site_url('purchase/add') ?>" method="Post">
<!-- Horizontal Form -->
<section class="content-header ml-4">
<div class="card card-info">
              <div class="card-header">
                 <button type="submit" class="btn btn-sm btn-danger">Simpan</button>
              </div>
              
              <!-- /.card-header -->
              <!-- form start -->
              <div class="card card-default">
             <div class="card-header">
           

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
              <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">No Nota</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="no_nota" value="<?= $kode?>" id="" readonly>
                    </div>
                  </div>
                <!-- /.form-group -->
                <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">No PO</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" name="no_po" id="">
                     </div> 
                  </div> 
                  

                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Supplier</label>
                    <div class="col-sm-10">
                     <select name="kode_supl" id="kode_supl" class="form-control">
                        <option>-Pilih-</option>
                          <?php foreach ($supp as $key => $value) { ?>
                           <option value="<?= $value->kode_supl?>"><?= $value->nama?></option>
                          <?php } ?>
                     </select>
                     </div> 
                  </div>



                  <div class="form-group row">
                    <label for="" class="col-sm-2 col-form-label">Tanggal</label>
                    <div class="col-sm-10">
                    <input type="date" name="tanggal" value="<?= date('Y-m-d', strtotime('now'))?>" class="form-control" readonly>
                     </div> 
                  </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-md-6">
               <!-- <div class="form-group">
                    <label for="" class="col-sm-2 col-form-label">Total QTY</label>
                    <div class="col-sm-10">
                    <input type="text" class="form-control" id="" readonly>
                     </div> 
                  </div> -->
                 <!-- /.form-group -->
              
                    <!-- <label for="" class="col-sm-2 col-form-label">Total Harga</label>
                    <div class="col-sm-10">
                     <input type="text" class="form-control" id="" readonly>
                     </select>
                    
                  </div> -->
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
            </div>

             </section>
          
           



               <section class="content-header ml-4">
              <div class="card card-info">
              <div class="card-header">
                 
              </div>
              
              <!-- /.card-header -->
              <!-- form start -->
              <div class="card card-default">
             <div class="card-header">
           

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
              <div class="form-group row">
                    
                  </div>
                <!-- /.form-group -->
                
                  

                  <div class="form-group row">
                  <label for="" class="col-sm-2 col-form-label"> Nama Barang</label>
                    <div class="col-sm-10">
                     <input type="text" class="form-control" name="nama_brg" id="nama_brg">
                     </div>
                     </div>
                 
                     <div class="form-group row">
                     <label for="" class="col-sm-2 col-form-label mt-2"> QTY</label>
                    <div class="col-sm-10">
                    <input type="number" class="form-control" name="qty" id="qty" >
                     </div>
                     </div>


                     <div class="form-group row">
                     <label for="" class="col-sm-2 col-form-label mt-2"> Harga Satuan</label>
                    <div class="col-sm-10">
                    <input type="number" class="form-control" id="harga_satuan" name="harga_satuan">
                     </div>
                     </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
             
              <!-- /.col -->
            </div>
            </form>
            <!-- /.row -->
          </div>
            </div>

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
              
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col" style="width:15%">no_nota</th>
                      <th scope="col">no_po</th>
                      <th scope="col">supplier</th>
                      <th scope="col">tanggal</th>
                      <th scope="col">total_qty</th>
                      <th scope="col">harga satuan</th>
                      <th scope="col">total_harga</th>
                      <th scope="col" style="width:3%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1;
                     foreach ($row as $key => $value) { ?>
                        <tr>
                            <td><?= $no++?></td>
                            <td><?=$value->no_nota?></td>
                            <td><?=$value->no_po?></td>
                            <td><?=$value->supplier?></td>
                            <td><?=$value->tanggal?></td>
                            <td><?=$value->total_qty?></td>
                            <td><?=$value->harga_satuan?></td>
                            <td><?=$value->total_harga?></td>
                            <td>
                                <a href="" class="btn btn-sm btn-warning"> <i class="fa fa-edit"></i> </a>
                                <a href="" class="btn btn-sm btn-danger"> <i class="fa fa-trash"></i> </a>
                            </td>
                        </tr>
                  <?php  } ?>
                   
                    
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
  