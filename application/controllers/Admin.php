<?php

class Admin extends MY_Controller {
    
    
    public function index(){
    }
    
    
    public function dashboard() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->load->model('users_detail_m');
        $this->load->model('rel_layanan_m');
        $this->load->model('ref_pengajuan_m');
        
        $this->data['title'] = 'Dashboard';
        $this->data['subview'] = 'admin/v_dashboard';
        $this->data['jumlah_user'] = $this->users_detail_m->get_count(['level' => LEVEL3]);
        $this->data['jenis_layanan'] = $this->rel_layanan_m->get_count();
        $this->data['jumlah_pengajuan'] = $this->ref_pengajuan_m->get_count();
        $this->data['pengajuan_selesai'] = $this->ref_pengajuan_m->get_count(['status_pengajuan' => ACC_KA_UKPD]);

        $this->load->view('_layout_main', $this->data);
    }

    public function users() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->data['title'] = 'Manajemen User';
        $this->data['subview'] = 'admin/v_users';

        $this->load->view('_layout_main', $this->data);
    }
    
    public function pengaturan_layanan() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        
        $this->load->model('rel_fp_m');
        
        $this->data['title'] = 'Pengaturan Layanan';
        $this->data['subview'] = 'admin/v_pengaturan_layanan';
        $this->data['rel_fp'] = $this->rel_fp_m->get();

        $this->load->view('_layout_main', $this->data);
    }
    
    public function informasi_pengajuan() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        
        $this->load->model('rel_fp_m');
        
        $this->data['title'] = 'Informasi Pengajuan';
        $this->data['subview'] = 'admin/v_informasi_pengajuan';
        $this->data['rel_fp'] = $this->rel_fp_m->get();

        $this->load->view('_layout_main', $this->data);
    }
    
    public function rekapitulasi_laporan() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->data['title'] = 'Rekapitulasi Laporan Pelayanan';
        $this->data['subview'] = 'admin/v_rekapitulasi_laporan';

        $this->load->view('_layout_main', $this->data);
    }
}