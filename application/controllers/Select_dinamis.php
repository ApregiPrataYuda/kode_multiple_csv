<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_dinamis extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('Select_dinamis_models');
    }

	public function index()
	{
        $gets['gets'] = $this->Select_dinamis_models->get();
		$this->template->load('template','Select_dinamis/Select_dinamis',$gets);
	}

    public function getstatebycountry()
    {
          $gets = $this->Select_dinamis_models->getdata($this->input->post('country'));
           foreach ($gets->result() as $key => $value) {
             echo '<option value="' . $value->id . '">' . $value->name . '</option>';
         }
    }

    public function getcitybystate()
    {
        $gets = $this->Select_dinamis_models->getsdata($this->input->post('state'));
        foreach ($gets->result() as $key => $value) {
            echo '<option value="' . $value->id . '">' . $value->name . '</option>';
        }
    }
}
