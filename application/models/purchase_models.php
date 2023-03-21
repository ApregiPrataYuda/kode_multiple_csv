<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class purchase_models extends CI_Model {


public function cetakkode()
{
    $this->db->select('no_nota');
    $this->db->from('svbrg');
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


  public function add($post)
  {
   $tam =  $post['qty'] * $post['harga_satuan'];


   $pars = [
    'no_nota' => $post['no_nota'],
    'no_po' => $post['no_po'],
    'supplier' => $post['kode_supl'],
    'tanggal' => $post['tanggal'],
    'harga_satuan' =>  $post['harga_satuan'],
    'total_qty' => $post['qty'],
    'total_harga' => $tam
 ];
 $this->db->insert('svbrg',$pars);


     $par = [
        'nama_brg' =>  $post['nama_brg'],
        'no_nota' => $post['no_nota'],
        'qty' =>  $post['qty'],
        'harga_satuan' =>  $post['harga_satuan'],
     ];
     $this->db->insert('dbrg',$par);
  }

 public function tampil()
 {
    $query = $this->db->query("SELECT *  FROM svbrg ")->result();
    return $query;
 }

}