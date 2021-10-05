<?php

class Profile extends MY_Controller {
    
    
    public function index() {
        
        if (!$this->session->userdata('has_loggedin')) {
               redirect('auth');
        }
        $this->load->model('users_detail_m');
        $this->load->model('rel_layanan_m');
        $this->load->model('ref_pengajuan_m');
        
        $this->data['title'] = 'Dashboard';
        $this->data['subview'] = 'profile/profile';
        $this->data['jumlah_user'] = $this->users_detail_m->get_count(['level' => LEVEL3]);
        $this->data['jenis_layanan'] = $this->rel_layanan_m->get_count();
        $this->data['jumlah_pengajuan'] = $this->ref_pengajuan_m->get_count();
        $this->data['pengajuan_selesai'] = $this->ref_pengajuan_m->get_count(['status_pengajuan' => ACC_KA_UKPD]);

        $this->load->view('_layout_main', $this->data);
    }
}