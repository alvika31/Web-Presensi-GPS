<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Docs extends CI_Controller {

	function __construct(){
		parent::__construct();
		$bulan = array(1 => "Januari", "Februari", "Maret", "April", "Mei", "Juni", "Juli", "Agustus", "September", "Oktober", "November", "Desember");
        $hari = array("Minggu", "Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu");
        $this->get_today_date = $hari[(int)date("w")] . ', ' . date("j ") . $bulan[(int)date('m')] . date(" Y");
		$this->load->library('form_validation');
		$this->load->helper(array('form', 'url'));
		$this->load->model('Users_model');
		$this->load->model('Jam_model');
        $this->load->model('Auth_model');
		$this->load->model('Absensi_model');
		$this->load->helper('date');
		$this->jamMasuk = $this->db->get_where('jam', ['id_jam' => 8])->row_array();
		$this->jamPulang = $this->db->get_where('jam', ['id_jam' => 9])->row_array();
		$id_pegawai = $this->session->id_pegawai;
		date_default_timezone_set("Asia/jakarta");
		if(! $this->session->userdata('username')) redirect('auth/login');
		
		
	}
}