<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

    function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->helper(array('form', 'url'));
        if($this->session->userdata('status') != "login"){
			redirect("auth/login");
		}
    }


    public function index(){

        $data = [
            'title' => 'Halaman Dashboard'
        ];
        $this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar');
		$this->load->view('layout/dashboard');
		$this->load->view('layout/footer');
    }

}