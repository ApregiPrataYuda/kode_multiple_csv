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
  

    <form action="">
    <div class="row">
    <div class="col-md-12">
            <label>Country</span> </label>
             <select name="Country" id="Country" class="form-control">
                     <option value="">pilih</option>
                    <?php foreach ($gets->result() as $data) { ?>
                          <option value="<?= $data->id ?>"><?= $data->name ?></option>
                    <?php } ?>
                
             </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>State</span> </label>
             <select name="State" id="State" class="form-control">
                     <option value="">pilih</option>
             </select>
          </div>

          <div class="col-md-12 mt-2">
            <label>City</span> </label>
             <select name="City" id="City" class="form-control">
                     <option value="">pilih</option>
             </select>
          </div>
    </div>
    </form>
      
    <!-- /.card-body -->
  </div>
</section>


<script>
$(function(){
    $('#Country').on('change', function(){
        if ($(this).find('option:selected').val() != '') {
            $.ajax({
        url: 'Select_dinamis/getstatebycountry',
        method: 'POST',
        data: { country: $('#Country').val() },
        success:function(tes){
            $('#State').html(tes)
        }
    })
        }
    })
})
</script>

<script>
    $(function(){
        $('#State').on('change', function() {
            if ($(this).find('option:selected').val() != '' ) {
                $.ajax({
                    url: 'Select_dinamis/getcitybystate',
                    method: 'POST',
                    data: {
                        state: $('#State').val()
                    },
                    success:function(x) {
                        $('#City').html(x)
                    }
                })
            }
        })
    })
</script>