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
                      <!-- <th scope="col" style="width:2%">#</th> -->
                      <th scope="col" style="width:5%">#No</th>
                      <th scope="col" style="width:5%">Id</th>
                      <th scope="col" style="width:15%">Kode Prod</th>
                      <th scope="col" style="width:15%">Nama Prod</th>
                      <th scope="col" style="width:15%">desc Prod</th>
                      <th scope="col" style="width:5%">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                  <!-- <?php
                  $no=1;
                    foreach ($row as $key => $val) { ?>
                  <tr>
                    <td></td>
                    <td><?= $no++?></td>
                    <td><?= $val->id_product_h?></td>
                    <td><?= $val->kode_product?></td>
                    <td><?= $val->nama_product?></td>
                    <td><?= $val->deskripsi_product?></td>
                    <td>
                       <a href="" class="btn btn-xs btn-primary"> <i class="fa fa-trash"></i> </a>
                        <a href="" class="btn btn-xs btn-warning"> <i class="fa fa-edit"></i> </a>
                     </td>
                  </tr>
                  <?php } ?> -->
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
     table =  $("#example1").DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false, 
        "processing": true,
        "serverSide": true,
        "ajax": {
               "url": "<?=site_url('datatableschilds/get_ajax')?>",
               "type": "POST",
             },


        // "columnDefs": [
        //     {
        //         "targets":[0,2],
        //         "visible":false
        //     }
        // ]
      })
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
            row.child(format(data[1])).show();
            tr.addClass('shown');

            $.ajax({
                 url:"datatableschilds/getdatadetail/"+data[1],
                 success:function(res) {
                       $('#example2 tbody').html(res)
                       $('#example2').DataTable()
                 }
            })

        }
    });


    function format(d) {
    // `d` is the original data object for the row
    return (
        '<table id="example2" class="table table-bordered table-striped"><thead><tr><th scope="col" style="width:5%">#No</th><th scope="col" style="width:15%">Qty</th><th scope="col" style="width:15%">Price</th><th scope="col" style="width:15%">Warna</th></tr></thead><tbody></tbody></table>'
    );
}
   
</script>