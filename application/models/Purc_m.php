<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Purc_m extends CI_Model {
    
    public function cetakkode()
{
    $this->db->select('no_nota');
    $this->db->from('header');
    $this->db->order_by('no_nota', 'desc');
    $this->db->limit(1);
    $data = $this->db->get();
    $data2 = $data->result();
    $q = "";
    foreach($data2 as $tr)
    {
        $q = $tr->no_nota;
    }
    $kode=substr($q, -8);
    $num=(int)$kode;
    $no = 1;
    if($num==0 || $num==null)
    {
        $temp = 1;
    }
    else
    {
        $temp=$num + $no;
    }
    $semua = "PB".str_pad($temp, 8, 0, STR_PAD_LEFT);	
    return $semua;
}
    
    public function getdatasupp()
  {
     $query = $this->db->query("SELECT * FROM msupl")->result();
     return $query;
  }

  public function getdatabrg()
  {
    $query = $this->db->query("SELECT * FROM mbarang")->result();
     return $query;
  }



  public function add($tamp)
  {
      $this->db->insert('header',$tamp);
     
  }


  public function  getall()
  {
     $query = $this->db->query("SELECT * FROM header")->result();
     return  $query;
  }

  public function  getalls($nota)
  {
     $query = $this->db->query("SELECT * FROM header WHERE no_nota = '$nota'")->row();
     return  $query;
  }


  public function getalldetail($no)
  {
    $query = $this->db->query("SELECT * FROM detail WHERE no_nota = '$no'")->result();
    return  $query;
  }

}