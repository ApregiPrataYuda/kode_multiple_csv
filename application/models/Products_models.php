<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products_models extends CI_Model {
  public function get()
  {
    $query = $this->db->query("SELECT * FROM product_header ORDER BY id DESC")->result();
    return $query;
  }
}