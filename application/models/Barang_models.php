<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Barang_models extends CI_Model {
 
public function get()
{
    $query = $this->db->query("SELECT * FROM barang_header ORDER BY id ASC")->result();
    return $query;
}


public function generatekodebarang()
{
  $this->db->select('RIGHT(barang_header.kode_barang,2) as kode_barang', FALSE);
  $this->db->order_by('kode_barang', 'DESC');
  $this->db->limit(1);
  $query = $this->db->get('barang_header');  //cek dulu apakah ada sudah ada kode di tabel.    
  if ($query->num_rows() <> 0) {
    //cek kode jika telah tersedia    
    $data = $query->row();
    $kode = intval($data->kode_barang) + 1;
  } else {
    $kode = 1;  //cek jika kode belum terdapat pada table
  }
  // $tgl = date('ym');
  $batas = sprintf("%05d", $kode);
  $kodetampil = "BRG".$batas;  //format kode
  return $kodetampil;
}

public function add($post)
{
   $parms = [
     'kode_barang' => $post['kode_barang'],
     'nama_barang' => $post['nama_barang'],
     'keterangan' => $post['keterangan'],
   ];
   $this->db->insert('barang_header',$parms);
}
}