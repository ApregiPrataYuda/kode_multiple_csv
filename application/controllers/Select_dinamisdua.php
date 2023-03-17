<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_dinamisdua extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Select_dinamis_models');
    }

	public function index()
	{
        $data['row'] = $this->Select_dinamis_models->ambildata();
        $data['rows'] = $this->Select_dinamis_models->ambildatawil();
       
		$this->template->load('template','Select_dinamisdua/Select_dinamisdua',$data);
	}


    public function ambildataprovinsi()
    {
        $gets = $this->Select_dinamis_models->ambildataprovbyng($this->input->post('Negara'));
        foreach ($gets->result() as $key => $value) {
            echo '<option value="' . $value->id . '">' . $value->nama . '</option>';
        }
    }


    public function ambildatakota()
    {
        $gets = $this->Select_dinamis_models->getscity($this->input->post('Provinsi'));
        foreach ($gets->result() as $key => $value) {
            echo '<option value="' . $value->id . '">' . $value->nama . '</option>';
        }
    }


    public function tambah()
    {
       $post = $this->input->post(null, TRUE);
        if (isset($_POST['add'])) {
               $this->Select_dinamis_models->add($post);
               redirect('Select_dinamisdua');
        }

    }


    public function edit($id)
    {
        $data['negara'] = $this->Select_dinamis_models->getid($id)->row();
        $data['row'] = $this->Select_dinamis_models->ambildata();
        // var_dump($query); die();
        $this->template->load('template','Select_dinamisdua/edit_dinamisdua',$data);
    }


    public function process()
    {
        $post = $this->input->post();
        if (isset($_POST['edit'])) {
            $this->Select_dinamis_models->edits($post);
            redirect('Select_dinamisdua');
     }
    }

   


}
