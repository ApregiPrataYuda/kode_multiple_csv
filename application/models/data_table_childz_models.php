<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class data_table_childz_models extends CI_Model {
  public function get()
  {
    $query = $this->db->query("SELECT * FROM negara ORDER BY id DESC")->result();
    return $query;
  }


  public function getprov($id)
  {
    $query = $this->db->query("SELECT * FROM provinsi WHERE id_negara = '$id' ORDER BY id DESC")->result();
    return $query;
  }
}