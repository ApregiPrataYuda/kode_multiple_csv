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

<a href="<?= base_url('Purc/viewdata')?>" class="btn btn-sm btn-primary ml-5">View Data</a>

<form action="<?= site_url('Purc/add') ?>" method="Post">
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
                      <input type="text" class="form-control" name="no_nota" value="<?=$kode?>" id="" readonly>
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
                     </select> -->
                  </div>
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
          <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th scope="col">kode Barang</th>
                      <th scope="col">Nama Barang</th>
                      <th scope="col">qty</th>
                      <th scope="col">harga</th>
                      <th scope="col">diskon</th>
                    </tr>
                  </thead>
                  <tbody>
                     <?php foreach ($rows as $key => $value) {?>
                     <tr>
                      <td><input type="text"  name="kode_brg[]" value="<?= $value->kode_brg?>" class="form-control" ></td>
                      <td><input type="text" name="nama[]" value="<?= $value->nama?>" class="form-control" readonly></td>
                      <td> <input type="number" name="qty[]" class="form-control"></td>
                      <td> <input type="number" name="harga[]" class="form-control"></td>
                     </tr>
                    <?php } ?>
                  </tbody>
                </table>
            
            <!-- /.row -->
          </div>
            </div>
          </section>
           </form>    
           





