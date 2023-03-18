<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class datatableschildsmodel extends CI_Model {

  public function get()
  {
    $query = $this->db->query("SELECT * FROM prod_h")->result();
    return $query;
  }


  public function getdetail($id)
  {
    $query = $this->db->query("SELECT * FROM d_prod WHERE id_product_h = '$id' ")->result();
    return $query;
  }


// start datatables
var $column_order = array(null, 'id_product_h', 'kode_product', 'nama_product', 'deskripsi_product'); //set column field database for datatable orderable
var $column_search = array('kode_product'); //set column field database for datatable searchable
var $order = array('id_product_h' => 'asc'); // default order 

private function _get_datatables_query() {
     $this->db->select('*');
    $this->db->from('prod_h');
    
    $i = 0;
    foreach ($this->column_search as $item) { // loop column 
        if(@$_POST['search']['value']) { // if datatable send POST for search
            if($i===0) { // first loop
                $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                $this->db->like($item, $_POST['search']['value']);
            } else {
                $this->db->or_like($item, $_POST['search']['value']);
            }
            if(count($this->column_search) - 1 == $i) //last loop
                $this->db->group_end(); //close bracket
        }
        $i++;
    }
     
    if(isset($_POST['order'])) { // here order processing
        $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
    }  else if(isset($this->order)) {
        $order = $this->order;
        $this->db->order_by(key($order), $order[key($order)]);
    }
}
function get_datatables() {
    $this->_get_datatables_query();
    if(@$_POST['length'] != -1)
    $this->db->limit(@$_POST['length'], @$_POST['start']);
    $query = $this->db->get();
    return $query->result();
}
function count_filtered() {
    $this->_get_datatables_query();
    $query = $this->db->get();
    return $query->num_rows();
}
function count_all() {
    $this->db->from('prod_h');
    return $this->db->count_all_results();
}
// end datatables

  

}