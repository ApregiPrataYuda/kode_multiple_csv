<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class csv_read extends CI_Controller {
    function __construct()
	{
		parent::__construct();
		$this->load->model('Select_dinamis_models');
	}

	public function index()
	{

		$this->template->load('template','csv_read/csv_read');
	}

    public function readdata()
    {
        // var_dump($_FILES["csv_file"]["tmp_name"]);

         $row = 0;
        if (($handle = fopen($_FILES["csv_file"]["tmp_name"], "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
            // $num = count($data);
            // echo "<td>$row</td>";
            // $row++;
            // for ($c=0; $c < $num; $c++) {
            //     // echo "<tr> <td>" . $data[$c] . "</td> </tr>";
            //     echo "<tr>";
            //     echo "<td>$data[0]</td>";
            //     echo "<td>$data[1]</td>";
            //     echo "</tr>";
            // }
            $row++;
            if($row == 1){  continue; }
                echo "<tr>";
                
               
                foreach ($data as $c) { 

                    echo "<td>$c</td>"; }
               
                echo "</tr>";

        }
        fclose($handle);
} 
    }




    public function savedata()
    {


       

        $row = 0;
        if (($handle = fopen($_FILES["csv_file"]["tmp_name"], "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {
            
            $row++;
            if($row == 1){continue; }

               
                    $arrs[]= [
                     'kode_barang' => $data[0],
                      'nama_barang' => $data[1]
                    ];

                    // if ($this->Select_dinamis_models->cek_kode($arrs)->num_rows() > 0) {
                       
                        
                    // }
            }
            //  var_dump($arrs);
            $this->db->insert_batch('prds',$arrs);
            
        fclose($handle);
  } 
    }

}
