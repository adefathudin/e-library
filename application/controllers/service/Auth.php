<?php

//defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model(['users_detail_m', 'users_login_m']);
    }

    public function signup_post(){
        
        $output['status'] = false;
        
        $user_id = md5($this->post('nik'));
        $nik = $this->post('nik');
        $nama_lengkap = $this->post('nama');
        $tempat_lahir = $this->post('tempat_lahir');
        $tanggal_lahir = $this->post('tanggal_lahir');
        $jkl = $this->post('jenis_kelamin');
        $email = $this->post('email');
        $agama = $this->post('agama');
        $profesi = $this->post('profesi');
        $hp = $this->post('nomor_hp');
        $ktp = $this->post('ktp');
        $alamat = $this->post('alamat');
        $password = $this->post('password');
        $repassword = $this->post('repassword');        
        $level = $this->post('level');        
        $status_jabatan = $this->post('status_jabatan');
        
        $upload_path = 'assets/image/KTP/';
        
        if ($password != $repassword){
            $output['message'] = "password tidak sama";
            $this->response($output);
        }
        
        $this->load->library('upload', [
            'upload_path' => $upload_path,
            'allowed_types' => 'jpg|jpeg|png',
            'file_name' => $user_id
        ]);

        if (!$this->upload->do_upload('ktp')) {
            $output['message'] = $this->upload->display_errors();
            $this->response($output);
        } else {
            $data = $this->upload->data();
        }


        if ($this->users_detail_m->get_count(array('email' => $email)) > 0) {            
            $output['message'] = "email ".$email." sudah terdaftar";
        } else if ($this->users_detail_m->get_count(array('nik' => $nik)) > 0) {
            $output['message'] = "NIK ".$email." sudah terdaftar";
        } else if ($this->users_detail_m->get_count(array('nomor_hp' => $hp)) > 0) {
            $output['message'] = "Nomor HP ".$email." sudah terdaftar";
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
                'agama' => $agama,            
                'profesi' => $profesi,                
                'email' => $email,
                'nomor_hp' => $hp,
                'ktp' => $data['file_name'],
                'alamat' => $alamat,
                'status_jabatan' => $status_jabatan,
                'level' => $level,
                'joined' => date("Y-m-d h:i:sa")
            ];

            $insert_users = $this->users_detail_m->save($data_user);

            if ($insert_users) {
                $this->users_login_m->save($data_login);
                
                $output['status'] = true;
                $output['message'] = "Pendaftaran berhasil, silahkan login kembali menggunakan email ".$email;

            } else {
                
                $output['message'] = "Something is wrong";
            }
        }
        
        $this->response($output);
        
    }
}