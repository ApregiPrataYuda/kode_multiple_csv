<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class purchase extends CI_Controller {


    function __construct(){
        parent::__construct();
        $this->load->model('purchase_models');
    }

	public function index()
	{
        $getkode = $this->purchase_models->cetakkode();
        $getsupp = $this->purchase_models->getdatasupp();
        $getbrg = $this->purchase_models->getdatabrg();
        $gets = $this->purchase_models->tampil();
        
        // var_dump($gets); die();
        $data = [
            'kode' => $getkode,
            'supp' => $getsupp,
            'brg' => $getbrg,
            'row' => $gets
        ];
		$this->template->load('template','purchase/purchasedata',$data);
	}

    public function add()
    {
       $post = $this->input->post(null, true);
       $this->purchase_models->add($post);
    }
}
