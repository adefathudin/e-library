<?php

class Luser extends MY_Controller {

    public function index() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->data['title'] = 'Pengajuan';
        $this->data['subview'] = 'pengajuan/pengajuan_index';

        $this->load->view('_layout_main', $this->data);
    }
    
    public function dashboard() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $user_id = $this->session->userdata('user_id');
        
        $this->load->model('users_detail_m');
        $this->load->model('rel_layanan_m');
        $this->load->model('ref_pengajuan_m');
        
        $this->data['title'] = 'Dashboard';
        $this->data['subview'] = 'user/v_dashboard';
        $this->data['jumlah_pengajuan'] = $this->ref_pengajuan_m->get_count(['add_id' => $user_id]);
        $this->data['pengajuan_selesai'] = $this->ref_pengajuan_m->get_count(['status_pengajuan' => ACC_KA_UKPD, 'add_id' => $user_id]);
        $this->db->or_where('status_pengajuan', REJECT_OPERATOR);
        $this->db->or_where('status_pengajuan', REJECT_KA_UKPD);
        $this->data['pengajuan_tolak'] = $this->ref_pengajuan_m->get_count(['status_pengajuan' => REJECT_OPERATOR, 'add_id' => $user_id]);
        $this->db->or_where('status_pengajuan', VERIFIKASI_DATA);
        $this->db->or_where('status_pengajuan', ACC_OPERATOR);
        $this->data['pengajuan_verifikasi'] = $this->ref_pengajuan_m->get_count(['add_id' => $user_id]);

        $this->load->view('_layout_main', $this->data);
    }
    
    public function pengajuan() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        
        $this->load->model('rel_layanan_m');
        
        $this->data['title'] = 'Pengajuan Layanan';
        $this->data['subview'] = 'user/pengajuan_index';
        $this->data['jenis_layanan'] = $this->rel_layanan_m->get();

        $this->load->view('_layout_main', $this->data);
    }
    
    public function monitoring() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->data['title'] = 'Monitoring Pengajuan Layanan';
        $this->data['subview'] = 'user/v_monitoring';

        $this->load->view('_layout_main', $this->data);
    }
    
    public function tes(){
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->data['title'] = 'Monitoring Pengajuan Layanan';
        $this->data['subview'] = 'user/tes';

        $this->load->view('_layout_main', $this->data);
    }
    
}