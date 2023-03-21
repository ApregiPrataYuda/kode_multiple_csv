<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang extends CI_Controller {

    function __construct(){
        parent::__construct();
      $this->load->model('Barang_models');
    }


	public function index()
	{
        $gets = $this->Barang_models->get();
        $data = [
            'title' => 'Data Header Barang',
            'row' => $gets
        ];
		$this->template->load('template','Barang/Header/Data',$data);
	}


    public function add()
    {

        
        $this->form_validation->set_rules('nama_barang', 'nama barang', 'required');
        $this->form_validation->set_rules('keterangan', 'keterangan barang', 'required');
		$this->form_validation->set_message('required', '{field}  masih kosong, silakan di isi atau dipilih dulu');
		$this->form_validation->set_error_delimiters('<span class="help-block">', '</span>');
        if ($this->form_validation->run() == FALSE) {
            $generatekode = $this->Barang_models->generatekodebarang();
            $data = [
                'title' => 'Add Data Header Barang',
                'kodex' => $generatekode
            ];
            $this->template->load('template','Barang/Header/Add',$data);
        }else {
           $post = $this->input->post(null, true);
            if (isset($_POST['add'])) {
                $this->Barang_models->add($post);
                if ($this->db->affected_rows() > 0) {
                    $this->session->flashdata('pesan','success save');
                    redirect('Barang');
                }
            }
        }
        
    }
}


