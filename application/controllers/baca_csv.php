<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class baca_csv extends CI_Controller {

	public function index()
	{
		$this->template->load('template','baca_csv/baca_csva');
	}

    public function add()
	{
		$this->template->load('template','baca_csv/baca_csvform');
	}
}





