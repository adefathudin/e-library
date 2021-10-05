<?php

class Auth extends MY_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model(['users_detail_m', 'users_login_m']);
    }

    public function index() {

        if (!empty($this->session->userdata('has_loggedin'))) {
            $data = $this->users_detail_m->get_by(['user_id' => $this->session->userdata('user_id')]);
            foreach ($data as $a){
                if ($a->level == LEVEL3) {
                    redirect('luser/dashboard');
                } else {
                    redirect('admin/dashboard');
                }
            }
        }
        $this->load->view('login');
    }

    public function login() {

        $email = $this->input->post('email');
        $password = md5($this->input->post('password'));

        $login_service = $this->userlib->login($email, $password);
        
        if ($login_service) {
            $data = $this->users_detail_m->get_by(['user_id' => $this->session->userdata('user_id')]);
            foreach ($data as $a){
                if ($a->level == LEVEL3) {
                    redirect('luser/dashboard');
                } else {
                    redirect('admin/dashboard');
                }
            }
        } else {
            $this->session->set_flashdata('message', 'user atau password salah');
            redirect(base_url('auth'));
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect('auth');
    }

    public function signup() {

        if (!isset($this->session)) {
            $this->load->library('session') or die('Can not load library Session');
        }

        $user_id = md5($this->input->post('nik'));
        $nik = $this->input->post('nik');
        $nama_lengkap = $this->input->post('nama');
        $tempat_lahir = $this->input->post('tempat_lahir');
        $tanggal_lahir = $this->input->post('tanggal_lahir');
        $jkl = $this->input->post('jenis_kelamin');
        $email = $this->input->post('email');
        $hp = $this->input->post('nomor_hp');
        $ktp = $this->input->post('ktp');
        $alamat = $this->input->post('alamat');
        $password = $this->input->post('passwor2');
        $repassword = $this->input->post('repassword');        
        $level = $this->input->post('level');        
        $status_jabatan = $this->input->post('status_jabatan');

        if ($this->users_detail_m->get_count(array('email' => $email)) > 0) {
            
            $this->session->set_flashdata('message', 'Email sudah terdaftar');
            redirect(base_url('auth/signup'));
            return false;
        } else {
            
            $data_login = [
                'user_id' => $user_id,
                'email' => $email,
                'password' => md5($password)
            ];

            $data_user = [
                'user_id' => $user_id,
                'nik' => $nik,
                'nama_lengkap' => $nama_lengkap,
                'tempat_lahir' => $tempat_lahir,
                'tanggal_lahir' => $tanggal_lahir,
                'jenis_kelamin' => $jkl,                
                'email' => $email,
                'nomor_hp' => $hp,
                'ktp' => $ktp,
                'alamat' => $alamat,
                'status_jabatan' => $status_jabatan,
                'level' => $level,
                'joined' => date("Y-m-d h:i:sa")
            ];

            $insert_users = $this->users_detail_m->save($data_user);

            if ($insert_users) {
                $this->users_login_m->save($data_login);

                $this->session->set_userdata($data_login);
                $this->session->set_userdata(['has_loggedin' => true]);

                redirect(base_url('dashboard'));
            } else {

                $this->session->set_flashdata('message', 'Ada sesuatu yang salah');
                redirect(base_url('auth/signup'));
                return false;
            }
        }
    }

}
