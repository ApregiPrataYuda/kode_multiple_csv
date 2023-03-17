<style type="text/css">
#drop_zone {
    border: 2px dashed #bbb;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    padding: 20px;
    text-align: center;
    font: 20pt bold 'Vollkorn';
    color: #bbb;
}

.btn_kapluk {
	margin: 5px;
}

.dataTables_length, .dataTables_filter {
	display: none;
}

.tagify{    
	height: auto;
}
</style>

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

<form action="" enctype="multipart/form-data" id="formupload" method="post">
<section class="content col-md-12">
  <!-- general form elements disabled -->
  <div class="card card-secondary">
    <div class="card-header" style="background-color:RGB(40, 178, 170);">
      <h3 class="card-title"></h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
      
        <div class="row">

        <label for="example-text-input" class="col-2 col-form-label">Bulk Data</label>
                                   
									<div class="col-4">
										<div id="drop_zone">
											<input name="csv_file" class="form-control csv_file" id="csv_file" type="file" style="display: none;">Drop files here or click to upload.
									    </div>
									    <!-- <a href="javascript:void()" onclick="download_template()"><strong>Download Template</strong></a> -->
									    <p><i>Format .csv file must use separator semicolon (;)</i></p>
									    <br>
									    <!-- <div class="progress progress_bar" style="display:none;">
									        <div class="progress-bar" id="bar" aria-valuemin="0" >
									            
									        </div>
									    </div> -->
									    <output id="list"></output>
                                        </div>

        </div>

        <div class="row ml-auto mb-3 mr-5 mt-3">
        <button type="button" style="display:none;" id="btn_verify" class="btn btn-outline-secondary btn-sm ml-2" onclick="Verifydata()"><i class="fa fa-arrow-right"></i>Verify</button>
          <!-- <button type="submit" class="btn btn-outline-secondary btn-sm ml-2"><i class="fa fa-arrow-right"></i>submit</button> -->
        </div>
      
    </div>
    <!-- /.card-body -->
  </div>
</section>


<section class="content col-md-12">
  <!-- general form elements disabled -->
  <div class="card card-secondary">
    <div class="card-header" style="background-color:RGB(40, 178, 170);">
      
    </div>
    <!-- /.card-header -->
    <div class="card-body">
 
 <table class="table table-bordered" id="tes">
  <thead class="thead-light">
    <tr>
      <th scope="col">kode barang</th>
      <th scope="col">nama barang</th>
    </tr>
  </thead>
   <tbody>
    
   </tbody>
  </table>
    </div>
     <div class="row ml-auto mb-3 mr-5 mt-3">
          <button type="button" class="btn btn-outline-secondary btn-sm ml-2" onclick="save()"> <i class="fa fa-save"></i> Simpan</button>
        </div>
      
    <!-- /.card-body -->
  </div>
</section>
</form>



<script>
    //triger inputan hidden
    $('#drop_zone').click(function() {
		$('.csv_file')[0].click();
	});
    //triger inputan hidden



    //
    function take_file(event)
{
    var files = event.target.files; // FileList object

    // files is a FileList of File objects. List some properties.
    var output = [];
    for (var i = 0, f; f = files[i]; i++) {
      	output.push('<strong>'+escape(f.name)+'</strong><br>'+f.type+'<br>'+f.size+' bytes');
    }
    $('#list').html(output);

    $('#btn_verify').show();
}

document.getElementById('csv_file').addEventListener('change', take_file, false);



//drop file
function drop_file(event)
{
    event.preventDefault();
    event.stopPropagation();

    var files = event.dataTransfer.files; // FileList object.

    // files is a FileList of File objects. List some properties.
    var output = [];
    for (var i = 0, f; f = files[i]; i++) {
      	output.push('<strong>'+escape(f.name)+'</strong><br>'+f.type+'<br>'+f.size+' bytes');
    }
    $('#list').html(output);

    $('#btn_verify').show();

    $('#csv_file').prop('files', event.dataTransfer.files);
    $('#csv_file').trigger('change');
}

//drag file
function drag_file(event)
{
    event.preventDefault();
    event.stopPropagation();
    event.dataTransfer.dropEffect = 'copy'; // Explicitly show this is a copy.
}

// Setup the dnd listeners.
var dropZone = document.getElementById('drop_zone');
if(dropZone)
{
	dropZone.addEventListener('dragover', drag_file, false);
	dropZone.addEventListener('drop', drop_file, false);
}



function Verifydata()
{
   $.ajax({
      url:'csv_read/readdata',
      method:'POST',
      data: new FormData($("#formupload")[0]),
      cache:false,
      contentType: false,
      processData: false,
      success: function(rest){
          $('#tes tbody').html(rest)
      }
   })
}



function save() {
      $.ajax({
          url:'csv_read/savedata',
          method:'POST',
          data: new FormData($('#formupload')[0]),
          cache:false,
            contentType: false,
            processData: false,
            success: function(x){
            // $('#tes tbody').html(x)
            console.log(x);
      }
      })
}
</script>




