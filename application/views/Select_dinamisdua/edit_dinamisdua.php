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
  
    <form action="<?= base_url('Select_dinamisdua/process')?>" method="POST">
    <div class="row">
    <div class="col-md-12">
            <label>Negara</span> </label>
            <input type="hidden" name="id" value="<?=$negara->id?>">
             <select name="Negara" id="Negara" class="form-control">
                <?php foreach ($row->result() as $key => $data) { ?>
                       <option  <?php echo ($data->id == $negara->id_negara ? 'selected = "selected"' : '') ?> value="<?= $data->id ?>"><?= $data->nama ?></option>
                <?php } ?>
             
             </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>Provinsi</span> </label>
             <select name="Provinsi" id="Provinsi" class="form-control">
                     <?php if (isset($negara) && $negara->id_negara != '') { ?>
                        <?php foreach ($this->Select_dinamis_models->ambildataprovbyng($negara->id_negara)->result() as $key => $data) { ?>
                        <option  <?php echo ($data->id == $negara->id_provinsi ? 'selected = "selected"' : '') ?> value="<?= $data->id ?>"><?= $data->nama ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>Kota</span> </label>
             <select name="Kota" id="Kota" class="form-control">
                    <?php if (isset($negara) && $negara->id_provinsi != '') { ?>
                        <?php foreach ($this->Select_dinamis_models->getscity($negara->id_provinsi)->result() as $key => $value) { ?>
                            <option <?php echo ($value->id == $negara->id_kota ? 'selected = "selected"' : '') ?> value="<?= $value->id ?>"><?= $value->nama ?></option>
                       <?php }?>
                    <?php } ?>
             </select>
          </div>
    </div>
      <div class="row mt-3 ml-2">
        <button type="submit" name="edit" class="btn btn-sm btn-primary">Simpan</button>
      </div>
    </form>
      
    <!-- /.card-body -->
  </div>
</section>
