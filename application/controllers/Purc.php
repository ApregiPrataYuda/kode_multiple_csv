<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Purc extends CI_Controller {


    function __construct(){
        parent::__construct();
        $this->load->model('Purc_m');
    }

    public function index()
    {
        $kd = $this->Purc_m->cetakkode();
        $getsupp = $this->Purc_m->getdatasupp();
        $getbrg = $this->Purc_m->getdatabrg();
        $data = [
            'supp' => $getsupp,
            'rows' => $getbrg,
            'kode' => $kd
        ];
         $this->template->load('template','Purc/Purc',$data);
    }

    public function add()
    {
        $totalqty = 0;
        $totalharga = 0;

        if ($this->input->post('qty') != '') {
        foreach ($this->input->post('qty') as $key => $value) {
          

                $totalqty += (int)$value;
                $totalharga += (int)$value * floatval($this->input->post('harga')[$key]); 
            
            
        }
    }


        $tamp = [ 
            'no_nota' => $this->input->post('no_nota'),
            'no_po' => $this->input->post('no_po'),
            'kode_supl' => $this->input->post('kode_supl'),
            'tanggal' => $this->input->post('tanggal'),
            'total_qty' => $totalqty,
            'total_harga' => $totalharga
        ];
        $this->Purc_m->add($tamp);

        

        foreach ($this->input->post('kode_brg') as $key => $value) {
            if ($this->input->post('qty')[$key] != '') {

            $arrs[] = [
                'kode_brg' => $value,
                'no_nota' => $this->input->post('no_nota'),
                'nama' => $this->input->post('nama')[$key],
                'qty' => $this->input->post('qty')[$key],
                'harga' => $this->input->post('harga')[$key]
              ];
             
            //   foreach ($arrs as $key => $data) {
            //     $savedata = [
            //         'kode_brg' => $data['kode_brg'],
            //         'nama' => $data['nama'],
            //         'qty' => $data['qty'],
            //         'harga' => $data['harga']
            //     ];
            //     $this->db->insert('detail', $savedata);
            //   }
            }
        }
        $this->db->insert_batch('detail', $arrs);
    
    }


    public function viewdata()
    {
        $getalldata = $this->Purc_m->getall();
        
        $data = [
            'row' => $getalldata
        ];
        $this->template->load('template','Purc/Purcdata', $data);
    }


    public function detail($nota)
    {
        $getalldata['header'] = $this->Purc_m->getalls($nota);
        $getalldata['row'] = $this->Purc_m->getalldetail($nota);
      
        $this->template->load('template','Purc/tampil', $getalldata);
    }

}