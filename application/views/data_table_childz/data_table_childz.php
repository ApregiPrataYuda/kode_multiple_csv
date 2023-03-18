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
                      <th scope="col" style="width:2%">#</th>
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col" style="width:15%">id</th>
                      <th scope="col" style="width:15%">negara</th>
                    
                    </tr>
                  </thead>
                  <tbody>
                 <?php
                 $no=1;
                    foreach ($row as $key => $value) { ?>
                       <tr>
                        <td></td>
                        <td><?= $no++?></td>
                        <td><?= $value->id?></td>
                        <td><?= $value->nama?></td>
                      
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
    var table;
    $(function() {
     table =  $("#example1").DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false,
        // "buttons": ["copy", "csv"]
        "columnDefs": [
            {
                "targets":[0,2],
                "visible":false
            }
        ]
      })
      

        // Add event listener for opening and closing details
    $('#example1 tbody').on('click', 'td', function () {
        var tr = $(this).closest('tr');
        var row = table.row(tr);
        var data = row.data();
 
       // console.log(data);
        if (row.child.isShown()) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        } else {
            // Open this row
            row.child(format(data[2])).show();
            tr.addClass('shown');

            $.ajax({
                 url:"data_table_childz/getdataprov/"+data[2],
                 success: function(res){
                      $('#example2 tbody').html(res)
                      $('#example2').DataTable()
                 }
            })
        }
    });
    });
 

    function format(d) {
        // console.log(d)
    // `d` is the original data object for the row
    return (
        '<table id="example2" class="table table-bordered table-striped"><thead><tr><th scope="col" style="width:5%">#No</th><th scope="col" style="width:15%">negara</th></tr></thead><tbody></tbody></table>'
    );
}



    
  
  </script>