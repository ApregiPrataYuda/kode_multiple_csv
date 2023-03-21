<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CI_Controller {
  function __construct()
	{
		parent::__construct();
		$this->load->model('Products_models');
	}

	public function index()
	{
    $getalldata = $this->Products_models->get();
    $data = [
        'title' => 'Product',
        'row' =>  $getalldata
    ];
		$this->template->load('template','Products/Products_header/Products',$data);
	}


  public function add()
  {

    if ($_POST == NULL) {
      $this->template->load('template','Products/Products_header/Productsadd');
  }else {
      redirect('Products/Products_multiple_post/'.$_POST['banyak_data']);
  }
    
  }


  public function Products_detail()
  {
    $data = [
    'title' => 'Product Detail',
    
   
];
    $this->template->load('template','Products/Products_detail/Products_detail',$data);
  }


  public function Products_multiple_post($banyak_data=0)
  {

      if ($this->input->post('kode_product') != '') {

        foreach ($this->input->post('kode_product') as $key => $value) {
          $arr[] = [
            'kode_product' => $value,
            'nama_product' => $this->input->post('nama_product')[$key]
          ];
          
         }
         foreach ($arr as $key => $data) {
          $savedata = [
             'kode_product' => $data['kode_product'],
             'nama_product' => $data['nama_product']
          ];
          $this->db->insert('product_header',$savedata);
          if ($this->db->affected_rows() > 0) {
            $this->session->flashdata('success','save done');
            redirect('Products');
          }
      }
       }
        $data =[
          'banyak_data' => $banyak_data,
       ];
        $this->template->load('template','Products/Products_header/Products_form', $data);
      }
    }
  
   
//}