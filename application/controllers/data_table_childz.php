<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_table_childz extends CI_Controller {


	function __construct(){
		parent::__construct();
		$this->load->model('data_table_childz_models');
	}


	public function index()
	{
		$data['row'] = $this->data_table_childz_models->get();
		// $data['row'] = $this->data_table_childz_models->getprov($id);
		// var_dump($data['row'] ); die();
		$this->template->load('template','data_table_childz/data_table_childz',$data);
	}


	public function getdataprov($id)
	{
		$data = $this->data_table_childz_models->getprov($id);
		$no=1;
		foreach
		 ($data as $key => $val) {
			echo '
			<tr>
			<td>'. $no++ .'</td>
			<td>'. $val->nama .'</td>
		   </tr>
			';
		}
	}

}