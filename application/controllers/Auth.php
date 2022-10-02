<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
  function __construct()
  {
    parent::__construct();
    $this->load->model('Auth_model');
    $this->load->library('form_validation');
  }

  public function index()
  {

    $data = [
      'title' => 'Halaman Login'
    ];
    $this->load->view('auth/login', $data);
  }

  function login()
  {

    $username = $this->input->post('username'); // Ambil isi dari inputan username pada form login
    $password = md5($this->input->post('password')); // Ambil isi dari inputan password pada form login dan encrypt dengan md5
    $user = $this->Auth_model->get($username); // Panggil fungsi get yang ada di UserModel.php
    if (empty($user)) { // Jika hasilnya kosong / user tidak ditemukan
      $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
      <span style="color:white">Username Tidak Ditemukan</span>
     </div>'); // Buat session flashdata
      redirect('auth'); // Redirect ke halaman login
    } else {
      if ($password == $user->password) { // Jika password yang diinput sama dengan password yang didatabase
        $session = array(
          'authenticated' => true,
          'id_pegawai' => $user->id_pegawai,
          'nama_lengkap' => $user->nama_lengkap, // Buat session authenticated dengan value true
          'username' => $user->username,  // Buat session username
          'user_type' => $user->user_type,
          'umur' => $user->umur,
          'image' => $user->image,
          'kode_pegawai' => $user->kode_pegawai,
          'jabatan' => $user->jabatan,
          'tgl_lahir' => $user->tgl_lahir,
          'tempat_lahir' => $user->tempat_lahir,
          'jenis_kelamin' => $user->jenis_kelamin,
          'status' => "login",
          'is_login' => true // Buat session authenticated
        );
        $this->session->set_userdata($session); // Buat session sesuai $session
        redirect('dashboard'); // Redirect ke halaman welcome
      } else {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
        <span style="color:white">Harap Masukan Password Yang Benar</span>
       </div>'); // Buat session flashdata
        redirect('auth'); // Redirect ke halaman login
      }
    }
  }

  public function logout()
  {
    $this->session->sess_destroy();
    redirect('auth');
  }

  public function myProfile()
  {
    $data = [
      'title' => 'Halaman My Profile'
    ];

    $this->load->view('layout/header', $data);
    $this->load->view('layout/sidebar');
    $this->load->view('auth/profile', $data);
    $this->load->view('layout/footer');
  }

  public function blocked()
  {

    $data = [
      'title' => 'Halaman Blocked'
    ];

    $this->load->view('layout/header', $data);
    $this->load->view('layout/sidebar');
    $this->load->view('auth/block', $data);
    $this->load->view('layout/footer');
  }

  function cara_absen()
  {

    $data = [
      'title' => 'Cara Melakukan Absensi'
    ];
    $this->load->view('layout/header', $data);
    $this->load->view('auth/caraabsen');
    $this->load->view('layout/footer');
  }
}
