<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ex_csv extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('Select_dinamis_models');
	}

	
	public function index()
	{
       $data['row'] = $this->Select_dinamis_models->getd();
	  
		$this->template->load('template','ex_csv',$data);
	}


	public function export()
	{
		$filename = 'prd_'.date('Ymd').'.csv'; 
   header("Content-Description: File Transfer"); 
   header("Content-Disposition: attachment; filename=$filename"); 
   header("Content-Type: application/csv; ");
   
   // get data 
   $usersData = $this->Select_dinamis_models->getr();

  
   // file creation 
   $file = fopen('php://output', 'w');
 
   $header = array("kode","Name"); 
   fputcsv($file, $header);
   foreach ($usersData as $key=>$line){ 
     fputcsv($file,$line); 
   }
   fclose($file); 
   exit; 
  }
	}

