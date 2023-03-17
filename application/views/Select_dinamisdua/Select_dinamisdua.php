<section class="content-header ml-4">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1>Select Dinamis</h1>
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

<section class="content col-md-6">
  <!-- general form elements disabled -->
  <div class="card card-secondary">
    <div class="card-header" style="background-color:RGB(40, 178, 170);">
     
    </div>
    <!-- /.card-header -->
    <div class="card-body">
  

    <form action="<?= base_url('Select_dinamisdua/tambah')?>" method="POST">
    <div class="row">
    <div class="col-md-12">
            <label>Negara</span> </label>
             <select name="Negara" id="Negara" class="form-control">
              <option value="">pilih</option>
                 <?php foreach ($row->result() as $key => $data) { ?>
                     <option value="<?= $data->id?>"><?= $data->nama?></option>
                 <?php } ?>
                
             </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>Provinsi</span> </label>
             <select name="Provinsi" id="Provinsi" class="form-control">
                     <option value="">pilih</option>
             </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>Kota</span> </label>
             <select name="Kota" id="Kota" class="form-control">
                     <option value="">pilih</option>
             </select>
          </div>
    </div>
      <div class="row mt-3 ml-2">
        <button type="submit" name="add" class="btn btn-sm btn-primary">Simpan</button>
      </div>
    </form>
      
    <!-- /.card-body -->
  </div>
</section>




<section class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h3><span class="badge badge-secondary"> tampil wilayah</span></h3>
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
            <h3 class="card-title  text-light">tampil wilayah</h3>

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
                      <th scope="col" style="width:15%">negara</th>
                      <th scope="col">provinsi</th>
                      <th scope="col">kota</th>
                      <th scope="col" style="width:3%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                  <?php
                    $no=1;
                     foreach ($rows->result() as $key => $data) { ?>
                     <tr>
                      <td><?= $no++?>.</td>
                      <td><?= $data->nama?></td>
                      <td><?= $data->namaprovinsi?></td>
                      <td><?= $data->namakota?></td>
                      
                      <td><a href="" id="btn-hapus" class="btn btn-danger btn-xs"> <i class="fa fa-trash"></i> </a>
                     <a href="<?= site_url('Select_dinamisdua/edit/' . $data->id) ?>" class="btn btn-warning btn-xs"> <i class="fa fa-edit"></i> </a>
                     
                    
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


<script>
    $(function() {
        $('#Negara').on('change', function() {
            if ($(this).find('option:selected').val() != '') {
                $.ajax({
                url: 'Select_dinamisdua/ambildataprovinsi',
                method: 'POST',
                data: { Negara: $('#Negara').val() },
                success:function(tes){
                    $('#Provinsi').html(tes)
                    // console.log(tes);
                }
    })
            }
        })
    })
</script>

<script>
$(function() {
    $('#Provinsi').on('change', function(){
       if ($(this).find('option:selected').val() != '') {
         $.ajax({
            url:'Select_dinamisdua/ambildatakota',
            method:'POST',
            data: {Provinsi: $('#Provinsi').val() },
            success: function(x) {
                $('#Kota').html(x)
            }
         })
       }
    })
})   
</script>

