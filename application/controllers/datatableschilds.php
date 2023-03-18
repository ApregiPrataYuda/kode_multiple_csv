<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class datatableschilds extends CI_Controller {

     function __construct()
    {
       parent::__construct();
       $this->load->model('datatableschildsmodel');
    }

	public function index()
	{
        $data['row'] = $this->datatableschildsmodel->get();
		$this->template->load('template','datatableschilds', $data);
	}


    public function getdatadetail($id)
    {
        $gets = $this->datatableschildsmodel->getdetail($id);
        $no=1;
		foreach
		 ($gets as $key => $val) {
			echo '
			<tr>
			<td>'. $no++ .'</td>
			<td>'. $val->qty .'</td>
			<td>'. $val->price .'</td>
			<td>'. $val->warna .'</td>
		   </tr>
			';
		}

        
    }


    function get_ajax() {
        $list = $this->datatableschildsmodel->get_datatables();
        $data = array();
        $no = @$_POST['start'];
        foreach ($list as $item) {
            $no++;
            $row = array();
            $row[] = $no.".";
            $row[] = $item->id_product_h;
            $row[] = $item->kode_product;
            $row[] = $item->nama_product;
            $row[] = $item->deskripsi_product;
            // add html for action
            $row[] = '<a href="" class="btn btn-primary btn-xs"><i class="fa fa-edit"></i> </a> 
                    <a href="" onclick="return confirm(\'Yakin hapus data?\')"  class="btn btn-danger btn-xs"><i class="fa fa-trash"></i> </a>';
            $data[] = $row;
        }
        $output = array(
                    "draw" => @$_POST['draw'],
                    "recordsTotal" => $this->datatableschildsmodel->count_all(),
                    "recordsFiltered" => $this->datatableschildsmodel->count_filtered(),
                    "data" => $data,
                );
        // output to json format
        echo json_encode($output);

            }
        }
 

