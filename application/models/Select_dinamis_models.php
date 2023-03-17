<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Select_dinamis_models extends CI_Model {

	
	public function get()
	{
       $query = $this->db->query("SELECT * FROM m_country WHERE id_parent = '' ORDER BY name ASC");
       return $query;
	}

    public function getdata($id)
    {
        $query = $this->db->query("SELECT * FROM m_country WHERE id_parent = '".$id."' ORDER BY name ASC");
       return $query;
    }

    public function getsdata($id)
    {
        $query = $this->db->query("SELECT * FROM m_country WHERE id_parent = '".$id."' ORDER BY name ASC");
       return $query;
    }



    //batas
    public function ambildata()
    {
        $query = $this->db->query("SELECT * FROM negara  ORDER BY nama ASC");
        return $query;
    }


    public function ambildataprovbyng($id)
    {
        $query = $this->db->query("SELECT * FROM provinsi WHERE id_negara = '".$id."' ORDER BY nama ASC");
        return $query;
    }



    public function getscity($id)
    {
        $query = $this->db->query("SELECT * FROM kota WHERE id_provinsi = '".$id."' ORDER BY nama ASC");
        return $query;
    }

   
    public function add($post)
    {
        $params = [
            'id_negara' =>  $post['Negara'],
            'id_provinsi' =>  $post['Provinsi'],
            'id_kota' =>  $post['Kota']
        ];
        $this->db->insert('wilayah', $params);
    }
    


    public function ambildatawil()
    {
        $query = $this->db->query("SELECT wilayah.id, negara.nama, kota.nama AS namakota, provinsi.nama AS namaprovinsi FROM wilayah 
        LEFT JOIN negara 
        ON wilayah.id_negara = negara.id
        LEFT JOIN kota 
        ON wilayah.id_kota = kota.id
        LEFT JOIN provinsi
        ON wilayah.id_provinsi = provinsi.id
        ");
        return $query;
    }


    public function getid($id)
    {

        $query = $this->db->query("SELECT wilayah.*, negara.nama, kota.nama AS namakota, provinsi.nama AS namaprovinsi FROM wilayah 
        LEFT JOIN negara 
        ON wilayah.id_negara = negara.id
        LEFT JOIN kota 
        ON wilayah.id_kota = kota.id
        LEFT JOIN provinsi
        ON wilayah.id_provinsi = provinsi.id
        WHERE wilayah.id = '$id'
        ");
        return $query;

        // $query = $this->db->query("SELECT * FROM wilayah WHERE id = '$id'");
        // return $query;
    }


    public function edits($post)
    {
       $params = [
         'id_negara' => $post['Negara'],
         'id_provinsi' => $post['Provinsi'],
         'id_kota' => $post['Kota'],
       ];
       $this->db->where('id',$post['id']);
       $this->db->update('wilayah', $params);
    }



    public function getd()
    {
        $query = $this->db->query("SELECT * FROM prds ")->result();
        return $query;
    }


    public function getr()
    {
       
 
            $response = array();
         
            // Select record
            $this->db->select('kode_barang,nama_barang');
            $q = $this->db->get('prds');
            $response = $q->result_array();
         
            return $response;
        
    }



    
    public function cek_kode($code, $id = null)
    {
        $this->db->from('prds');
        $this->db->where('kode_barang', $code);
        if ($id != null) {
         $this->db->where('id !=', $id);
        }
        $query = $this->db->get();
        return  $query;
    }
}
