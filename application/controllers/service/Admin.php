<?php

//defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model(['ref_fp_m','rel_layanan_m','rel_fp_m','ref_pengajuan_m','ref_fp_upload_m','users_detail_m','users_login_m']);
    }
    
    public function account_post() {
        
        $output['status'] = false;
        
        $nama = $this->post('nama');
        $tempat_lahir = $this->post('tempat_lahir');
        $tanggal_lahir = $this->post('tanggal_lahir');
        $jenis_kelamin = $this->post('jenis_kelamin');
        $email = $this->post('email');
        $no_telepon = $this->post('no_telepon');
        $alamat = $this->post('alamat');
        $role = $this->post('role');
        $password = password_hash($this->post('password'), PASSWORD_BCRYPT);
        $password_2 = password_hash($this->post('password_2'), PASSWORD_BCRYPT);
        $user_id = md5($email);
        
        $data_login = ([
            'user_id' => $user_id, 'password' => $password
        ]);
        
        $data_user = ([
            'user_id' => $user_id, 'nama_lengkap' => $nama,
            'tempat_lahir' => $tempat_lahir, 'alamat' => $alamat,
            'tanggal_lahir' => $tanggal_lahir, 'jenis_kelamin' => $jenis_kelamin,
            'email' => $email, 'nomor_hp' => $no_telepon, 'level' => $role
        ]);
        
        if ($this->users_login_m->get_count(['user_id' => $user_id])){
            $output['message'] = "Email sudah pernah terdaftar";
            $this->response($output);
        }
        
        try {
            if ($this->users_login_m->save($data_login)){
                $this->users_detail_m->save($data_user);
                $output['status'] = TRUE;
                $output['message'] = "Data user berhasil disimpan";
            }
        } catch (Exception $e){
            $output['message'] = $e->getMessage();
        }
        
        $this->response($output);
        
    }
    
    public function layanan_get(){
         
        $draw = $this->get('draw');
        $length = $this->get('length');
        $start = $this->get('start');
        $order = $this->get('order');
        $columns = $this->get('columns');
        $search = $this->get('search') ? $this->get('search') : NULL;

        $order_by = $columns[$order[0]['column']]['data'];
        $order_dir = $order[0]['dir'];

        $count = array();
        $where = false;

        foreach ($columns as $col) {
            if ($col['search']['value']) {
                $count[$col['data']] = $col['search']['value'];
                $where[$col['data']] = $col['search']['value'];
            }
        }
        
        
        $totalRecords = $this->rel_layanan_m->get_count($where);

        if ($search && $search['value']) {
            $this->db->like('nama_surat', $search['value']);
        }

        $totalFiltered = $this->rel_layanan_m->get_count($where);

        $output = array(
            "draw" => $draw,
            "recordsTotal" => $totalRecords,
            "recordsFiltered" => $totalFiltered,
            "data" => []
        );

        if ($search && $search['value']) {
            $this->db->like('nama_surat', $search['value']);
        }
        $this->db->select('a.*,b.nama_lengkap,b.status_jabatan');
        $this->db->from('rel_layanan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->group_by('a.id_layanan');
        
        $this->db->order_by($order_by, $order_dir);
        $this->db->offset($start)->limit($length);

        $data = $this->rel_layanan_m->get_by($where);

        if ($data) {
            foreach ($data as $item) {
                $output['data'][] = $item;
            }
        }
        
        $this->response($output);
    }
    
    public function fp_get() {
        
        $output['status'] = false;
        
        if ($this->rel_fp_m->get_count() > 0){
            $output['status'] = true;
            $output['item'] = $this->rel_fp_m->get();
        }
        
        $this->response($output);
    }
    
    public function detail_fp_get() {
        
        $output['status'] = true;
        
        $id_layanan = $this->get('id_layanan');
        
        $this->db->select('b.desc_fp');
        $this->db->from('ref_fp a,rel_fp b,rel_layanan c');
        $this->db->where('a.id_layanan',$id_layanan);        
        $this->db->where('c.id_layanan',$id_layanan);
        $this->db->where('a.id_fp=b.id_fp');
        $output['item'] = $this->db->get()->result();
        
        $this->response($output);
    }
    
    public function add_layanan_post() {
        
        $output['status'] = true;
        $nama_layanan = $this->post('nama_layanan');
        $fp_layanan = $this->post('fp_layanan');
        $id_layanan = $this->post('id_layanan');
        
        if ($id_layanan != '') {
            $data = [
                'desc_layanan' => $nama_layanan,
                'add_id' => $this->session->userdata('user_id')
            ];
            $ket = 'diedit';
            $insert_layanan = $this->rel_layanan_m->save($data, $id_layanan);
            
        } else {
            $id_layanan = 'LN_' . uniqid();
            $data = [
                'id_layanan' => $id_layanan,
                'desc_layanan' => $nama_layanan,
                'add_id' => $this->session->userdata('user_id')
            ];
            $ket = 'ditambahkan';
            $insert_layanan = $this->rel_layanan_m->save($data);
        }
        
        if ($insert_layanan){
            $this->db->query('delete from ref_fp where id_layanan="'.$id_layanan.'"');
            foreach ($fp_layanan as $fp){
                $this->ref_fp_m->save(['id_layanan' => $id_layanan, 'id_fp' => $fp]);
            }
            
            $output['status'] = true;
            $output['message'] = "Layanan ".$nama_layanan." berhasil ".$ket;
        }
        
        $this->response($output);
    }
    
    public function add_fp_post() {
        
        $output['status'] = false;
        
        $desc_fp = $this->post('nama_fp');
        $id_fp = 'FP_'.uniqid();
        
        $data = [
            'id_fp' => $id_fp,
            'desc_fp' => $desc_fp,
            'add_id' => $this->session->userdata('user_id')
        ];
        
        $insert_fp = $this->rel_fp_m->save($data);
        
        if ($insert_fp){
            
            $output['status'] = true;
            $output['message'] = "Dokumen persyaratan ".$desc_fp." berhasil ditambahkan";
            
        } else {
            $output['message'] = $this->last_message();
        }
        
        $this->response($output);
        
    }
    
    public function upload_dokumen_post(){
        
        $output['status'] = false;
        $id_surat = $this->post('id_surat');
        $user_id = $this->post('user_id');
        $nama_dokumen = $this->post('nama_dokumen');
        
        $upload_path = 'assets/image/Dokumen/';        
        
        $upload_eksist = $this->pendukung_surat_upload_m->get_by(['user_id' => $user_id, 'id_surat' => $id_surat, 'nama_dokumen' => $nama_dokumen]);
        if ($upload_eksist){
            foreach ($upload_eksist as $item){
                $this->pendukung_surat_upload_m->delete($item->id);
                unlink('assets/image/Dokumen/'.$item->path_upload);
            }
        }
        
        $this->load->library('upload', [
            'upload_path' => $upload_path,
            'allowed_types' => 'jpg|jpeg|png',
            'file_name' => $user_id.'-'.$id_surat.'-'.$nama_dokumen
        ]);

        if (!$this->upload->do_upload('file_pendukung')) {
            $output['message'] = $this->upload->display_errors();
            $this->response($output);
        } else {
            $data = $this->upload->data();
        }        
        
        $data_insert = [
            'id_surat' => $id_surat,
            'user_id' => $user_id,
            'status_upload' => true,
            'nama_dokumen' => $nama_dokumen,
            'path_upload' => $data['file_name']            
        ];
        
        $insert = $this->pendukung_surat_upload_m->save($data_insert);
        
        if ($insert){
            $output['status'] = true;
            $output['message'] = $nama_dokumen. " berhasil diupload";
        }

        $this->response($output);        
    }
    
    public function informasi_pengajuan_get(){
        
        $draw = $this->get('draw');
        $length = $this->get('length');
        $start = $this->get('start');
        $order = $this->get('order');
        $columns = $this->get('columns');
        $search = $this->get('search') ? $this->get('search') : NULL;
        $level = $this->get('level');
        
        if ($level == LEVEL2){
            $stsp = VERIFIKASI_DATA; 
        } else if ($level == LEVEL1){
            $stsp = ACC_OPERATOR; 
        }
        
        $order_by = $columns[$order[0]['column']]['data'];
        $order_dir = $order[0]['dir'];

        $count = array();
        $where = false;

        foreach ($columns as $col) {
            if ($col['search']['value']) {
                $where[$col['data']] = $col['search']['value'];
            }
        }
        
        $this->db->select('count(*) as found');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->where('a.status_pengajuan', $stsp);
        $this->db->group_by('a.id_pengajuan');
        $totalRecords = $this->ref_pengajuan_m->get($where);
        $totalRecords = $totalRecords == '' ? $totalRecords : "0";

        if ($search && $search['value']) {
            $this->db->like('id_pengajuan', $search['value']);
        }

        $this->db->select('count(*) as found');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->where('a.status_pengajuan', $stsp);
        $this->db->group_by('a.id_pengajuan');
        $totalFiltered = $this->ref_pengajuan_m->get($where);
        $totalFiltered = $totalFiltered == '' ? $totalFiltered : "0";

        $output = array(
            "draw" => $draw,
            "recordsTotal" => $totalRecords,
            "recordsFiltered" => $totalFiltered,
            "data" => []
        );

        if ($search && $search['value']) {
            $this->db->like('id_pengajuan', $search['value']);
        }
        
        $this->db->select('a.*,b.nama_lengkap,c.desc_status,d.desc_layanan');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->where('a.status_pengajuan', $stsp);
        $this->db->group_by('a.id_pengajuan');
        $this->db->order_by($order_by, $order_dir);
        $this->db->offset($start)->limit($length);
        $data = $this->ref_pengajuan_m->get_by($where);
        
        if ($data) {
            foreach ($data as $item) {
                $output['data'][] = $item;
            }
        }
        
        $this->response($output);
    }
    
    public function rekapitulasi_laporan_get(){
        
        $draw = $this->get('draw');
        $length = $this->get('length');
        $start = $this->get('start');
        $order = $this->get('order');
        $columns = $this->get('columns');
        $search = $this->get('search') ? $this->get('search') : NULL;
        $level = $this->get('level');
        
        $order_by = $columns[$order[0]['column']]['data'];
        $order_dir = $order[0]['dir'];

        $count = array();
        $where = false;

        foreach ($columns as $col) {
            if ($col['search']['value']) {
                $where[$col['data']] = $col['search']['value'];
            }
        }
        
        $this->db->select('count(*) as found');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->group_by('a.id_pengajuan');
        $totalRecords = $this->ref_pengajuan_m->get($where);
        $totalRecords = $totalRecords == '' ? $totalRecords : "0";

        if ($search && $search['value']) {
            $this->db->like('a.id_pengajuan', $search['value']);
        }

        $this->db->select('count(*) as found');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->group_by('a.id_pengajuan');
        $totalFiltered = $this->ref_pengajuan_m->get($where);
        $totalFiltered = $totalFiltered == '' ? $totalFiltered : "0";

        $output = array(
            "draw" => $draw,
            "recordsTotal" => $totalRecords,
            "recordsFiltered" => $totalFiltered,
            "data" => []
        );

        if ($search && $search['value']) {
            $this->db->like('a.id_pengajuan', $search['value']);
        }
        
        $this->db->select('a.*,b.nama_lengkap,c.desc_status,d.desc_layanan');
        $this->db->from('ref_pengajuan a');
        $this->db->join('users_detail b', 'a.add_id = b.user_id');
        $this->db->join('rel_status c', 'a.status_pengajuan = c.id_status');
        $this->db->join('rel_layanan d', 'a.layanan_id = d.id_layanan');
        $this->db->group_by('a.id_pengajuan');
        $this->db->order_by($order_by, $order_dir);
        $this->db->offset($start)->limit($length);
        $data = $this->ref_pengajuan_m->get_by($where);
        
        if ($data) {
            foreach ($data as $item) {
                $output['data'][] = $item;
            }
        }
        
        $this->response($output);
    }
    
    public function detail_pengajuan_get(){
        
        $output['status'] = false;
        $user_id = $this->get('user_id');
        $id_layanan = $this->get('id_layanan');
        $operator_id = $this->get('operator_id');
        $ka_ukpd_id = $this->get('ka_ukpd_id');
        
        $this->db->select('a.id,a.upload_time, a.path_upload, b.desc_fp');
        $this->db->from('ref_fp_upload a, rel_fp b');
        $this->db->where('a.layanan_id',$id_layanan);        
        $this->db->where('a.add_id',$user_id);
        $this->db->where('a.fp_id=b.id_fp');
        $result_fp_eksist = $this->db->get()->result();
        
        $this->db->select('nama_lengkap,status_jabatan,level');
        $this->db->where('user_id', $operator_id);
        $result_operator = $this->db->get('users_detail')->result();
        
        $this->db->select('nama_lengkap,status_jabatan,level');
        $this->db->where('user_id', $ka_ukpd_id);
        $result_ka_ukpd = $this->db->get('users_detail')->result();
        
        $this->db->select('*');
        $this->db->where('user_id', $user_id);
        $result_user = $this->db->get('users_detail')->result(); 
        
        if ($result_fp_eksist){
            $output['status'] = true;
            $output['fp_eksist'] = $result_fp_eksist;
            $output['operator_name'] = $result_operator;
            $output['ka_ukpd_name'] = $result_ka_ukpd;
            $output['user_name'] = $result_user;
        }
        
        $this->response($output);
        
    }
    
    public function users_get(){
         
        $draw = $this->get('draw');
        $length = $this->get('length');
        $start = $this->get('start');
        $order = $this->get('order');
        $columns = $this->get('columns');
        $search = $this->get('search') ? $this->get('search') : NULL;

        $order_by = $columns[$order[0]['column']]['data'];
        $order_dir = $order[0]['dir'];

        $count = array();
        $where = false;

        foreach ($columns as $col) {
            if ($col['search']['value']) {
                $count[$col['data']] = $col['search']['value'];
                $where[$col['data']] = $col['search']['value'];
            }
        }
        
        $totalRecords = $this->users_detail_m->get_count($where);

        if ($search && $search['value']) {
            $this->db->like('nik', $search['value']);
        }

        $totalFiltered = $this->users_detail_m->get_count($where);

        $output = array(
            "draw" => $draw,
            "recordsTotal" => $totalRecords,
            "recordsFiltered" => $totalFiltered,
            "data" => []
        );

        if ($search && $search['value']) {
            $this->db->like('nik', $search['value']);
        }
        
        $this->db->order_by($order_by, $order_dir);
        $this->db->offset($start)->limit($length);

        $data = $this->users_detail_m->get_by($where);

        if ($data) {
            foreach ($data as $item) {
                $output['data'][] = $item;
            }
        }
        
        $this->response($output);
    }
    
    public function account_delete() {

        $user_id = $this->input('user_id');
        
        if ($this->users_login_m->delete(['id' => $user_id])){
            $this->
        }

        $update_user = $this->users_login_m->save_where(['blokir' => 1], ['user_id' => $id]);

        if ($update_user) {

            $this->users_detail_m->save_where(['aktif' => 0], ['user_id' => $id]);
            $output['status'] = true;
            $output['message'] = "User berhasil diblock";
        } else {
            $output['status'] = false;
            $output['message'] = "Something wrong";
        }

        $this->response($output);
    }
    
    public function update_status_pengajuan_post() {

        $output['status'] = false;
        $id_pengajuan = $this->post('id_pengajuan');
        $accept = $this->post('accept');
        $level = $this->post('level');
        $keterangan = $this->post('keterangan_reject');
        $keterangan_accept = $this->post('keterangan_accept');
        $fp = $this->post('checkbox_fp');
        $user = $this->post('user_id');
        
        if ($level == LEVEL2){
            $acc = ACC_OPERATOR; 
            $rej = REJECT_OPERATOR;
            $user_id = 'operator_id';
            $note = 'operator_note';
        } else if ($level == LEVEL1){
            $acc = ACC_KA_UKPD;
            $rej = REJECT_KA_UKPD;
            $user_id = 'ka_ukpd_id';
            $note = 'ka_ukpd_note';
        }
        
        if ($accept == 'accept') {
            $update = $this->ref_pengajuan_m->save(['status_pengajuan' => $acc, $user_id => $this->session->userdata('user_id'), $note => '', 'keterangan' => $keterangan_accept], $id_pengajuan);
            
            if ($level == LEVEL1){
                $this->_laporan_pdf($user,$id_pengajuan,$keterangan_accept);
            }
            
        } else {
            
            $update = $this->ref_pengajuan_m->save(['status_pengajuan' => $rej, $user_id => $this->session->userdata('user_id'), $note => $keterangan, 'is_open' => true, 'keterangan' => $keterangan_accept], $id_pengajuan);
            
            if ($fp != '') {
                for ($i = 0; $i < count($fp); $i++) {
                    $id = $fp[$i];

                    /*
                     * Mencari file pendukung yg sudah terupload
                     */

                    $image = $this->ref_fp_upload_m->get_by(['id' => $id]);
                    foreach ($image as $item) {
                        unlink('assets/image/Dokumen/' . $item->path_upload);
                    }

                    $this->ref_fp_upload_m->delete($id);
                }
            }
        }

        if ($update) {
            $output['status'] = true;
        } else {
            $output['message'] = $this->get_last_message();
        }
        
        $this->response($output);
    }
    
    public function _laporan_pdf($user,$id_pengajuan,$keterangan_accept) {

        $this->load->model('rel_fp_m');
        
        $user_name = $this->users_detail_m->get_by(['user_id' => $user]);
        
        $data = $this->rel_fp_m->get();
        
        $html = '<html>
        <head><meta http-equiv=Content-Type content="text/html; charset=UTF-8">
        <style type="text/css">
        <!--
        span.cls_002{font-family:Arial,serif;font-size:14.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
        div.cls_002{font-family:Arial,serif;font-size:14.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        span.cls_003{font-family:Arial,serif;font-size:12.0px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        div.cls_003{font-family:Arial,serif;font-size:12.0px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        span.cls_004{font-family:Tahoma,serif;font-size:11.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        div.cls_004{font-family:Tahoma,serif;font-size:11.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        span.cls_008{font-family:Times,serif;font-size:16.0px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: underline}
        div.cls_008{font-family:Times,serif;font-size:16.0px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
        span.cls_006{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        div.cls_006{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:normal;font-style:normal;text-decoration: none}
        span.cls_007{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
        div.cls_007{font-family:Times,serif;font-size:12.1px;color:rgb(0,0,0);font-weight:bold;font-style:normal;text-decoration: none}
        -->
        </style>
        </head>
        <body>
        <div style="position:absolute;left:50%;margin-left:-297px;top:0px;width:595px;height:935px;border-style:outset;overflow:hidden">
        <div style="position:absolute;left:0px;top:0px">
        <img src="'.base_url().'assets/image/background_report.jpg" width=595 height=935/></div>
        <div style="position:absolute;left:148.32px;top:28.89px" class="cls_002"><span class="cls_002">PEMERINTAH PROVINSI DKI JAKARTA</span></div>
        <div style="position:absolute;left:153.96px;top:56.63px" class="cls_003"><span class="cls_003">KOTAMADYA</span></div>
        <div style="position:absolute;left:239.88px;top:56.63px" class="cls_003"><span class="cls_003">:</span></div>
        <div style="position:absolute;left:254.16px;top:56.63px" class="cls_003"><span class="cls_003">Jakarta Utara</span></div>
        <div style="position:absolute;left:153.96px;top:68.15px" class="cls_003"><span class="cls_003">KECAMATAN</span></div>
        <div style="position:absolute;left:239.88px;top:68.15px" class="cls_003"><span class="cls_003">:</span></div>
        <div style="position:absolute;left:254.16px;top:68.15px" class="cls_003"><span class="cls_003">Cilincing</span></div>
        <div style="position:absolute;left:153.96px;top:79.67px" class="cls_003"><span class="cls_003">KELURAHAN</span></div>
        <div style="position:absolute;left:239.88px;top:79.67px" class="cls_003"><span class="cls_003">:</span></div>
        <div style="position:absolute;left:254.16px;top:79.67px" class="cls_003"><span class="cls_003">Marunda</span></div>
        <div style="position:absolute;left:148.32px;top:104.97px" class="cls_004"><span class="cls_004">Jl. Marunda Baru No. 5 Telp. (021) 44851565</span></div>
        <div style="position:absolute;left:211.32px;top:155.39px" class="cls_008"><span class="cls_008">SURAT KETERANGAN</span></div>
        <div style="position:absolute;top:176.74px" class="cls_006"><span class="cls_006"><center>Nomor : '.strtoupper($id_pengajuan).'/'.date('Y').'</center></span></div>';
        foreach ($user_name as $user){
            $nama_user = strtoupper($user->nama_lengkap);
            $tgl_lahir = date('d M Y', strtotime($user->tanggal_lahir));
         $html .=    
        '<div style="position:absolute;left:72.00px;top:208.54px" class="cls_006"><span class="cls_006">Nama Lengkap</span></div>
        <div style="position:absolute;left:226.08px;top:208.54px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:208.54px" class="cls_006"><span class="cls_006">'.$nama_user.'</span></div>
        <div style="position:absolute;left:72.00px;top:224.38px" class="cls_006"><span class="cls_006">No. KTP/SKTLD</span></div>
        <div style="position:absolute;left:226.08px;top:224.38px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:224.38px" class="cls_006"><span class="cls_006">'.$user->nik.'</span></div>
        <div style="position:absolute;left:72.00px;top:240.22px" class="cls_006"><span class="cls_006">Tempat / Tanggal Lahir</span></div>
        <div style="position:absolute;left:226.08px;top:240.22px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:240.22px" class="cls_006"><span class="cls_006">'.$user->tempat_lahir.', '.$tgl_lahir.'</span></div>
        <div style="position:absolute;left:72.00px;top:256.06px" class="cls_006"><span class="cls_006">Jenis Kelamin</span></div>
        <div style="position:absolute;left:226.08px;top:256.06px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:256.06px" class="cls_006"><span class="cls_006">'.$user->jenis_kelamin.'</span></div>
        <div style="position:absolute;left:72.00px;top:272.02px" class="cls_006"><span class="cls_006">Agama</span></div>
        <div style="position:absolute;left:226.08px;top:272.02px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:272.02px" class="cls_006"><span class="cls_006">'.$user->agama.'</span></div>
        <div style="position:absolute;left:72.00px;top:287.86px" class="cls_006"><span class="cls_006">Pekerjaan</span></div>
        <div style="position:absolute;left:226.08px;top:287.86px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:287.86px" class="cls_006"><span class="cls_006">'.$user->profesi.'</span></div>
        <div style="position:absolute;left:72.00px;top:303.70px" class="cls_006"><span class="cls_006">Alamat</span></div>
        <div style="position:absolute;left:226.08px;top:303.70px" class="cls_006"><span class="cls_006">:</span></div>
        <div style="position:absolute;left:251.76px;top:303.70px" class="cls_006"><span class="cls_006">'.$user->alamat.'</span></div>
        <div style="position:absolute;left:72.00px;top:334.54px" class="cls_006"><span class="cls_006">Maksud / Keperluan</span></div>
        <div style="position:absolute;left:226.08px;top:334.54px" class="cls_006"><span class="cls_006">:</span></div>'; }
        $html .= '
        <div style="position:absolute;left:251.76px;top:334.54px" class="cls_006"><span class="cls_006">'.$keterangan_accept.'</span></div>
        <div style="position:absolute;left:72.00px;top:382.30px" class="cls_006"><span class="cls_006">Demikian surat keterangan ini dibuat untuk dipergunakan sebagaimana mestinya</span></div>
        <div style="position:absolute;left:383.40px;top:419.82px" class="cls_006"><span class="cls_006">Jakarta, '.date('d M Y').'</span></div>
        <div style="position:absolute;left:99.60px;top:435.66px" class="cls_006"><span class="cls_006">Tanda tangan ybs</span></div>
        <div style="position:absolute;left:401.16px;top:435.66px" class="cls_006"><span class="cls_006">Lurah Marunda</span></div>
        <div style="position:absolute;left:94.56px;top:499.14px" class="cls_007"><span class="cls_007">'.$nama_user.'</span></div>
        <div style="position:absolute;left:408.48px;top:499.14px" class="cls_006"><span class="cls_006">Nama Lurah</span></div>
        <div style="position:absolute;left:262.56px;top:515.10px" class="cls_006"><span class="cls_006">Nomor :</span></div>
        <div style="position:absolute;left:259.92px;top:530.94px" class="cls_006"><span class="cls_006">Tanggal :</span></div>
        <div style="position:absolute;left:251.04px;top:546.78px" class="cls_006"><span class="cls_006">Mengetahui :</span></div>
        <div style="position:absolute;left:243.36px;top:562.62px" class="cls_006"><span class="cls_006">Camat Cilincing</span></div>
        </div>

        </body>
        </html>';
                
        $this->load->library('pdf'); //memanggil library dompdf yang ada di folder libraris
        $this->pdf->loadHtml($html); //load code html yang akan digenerate menjadi pdf
        $this->pdf->setPaper('A4', 'potrait'); // setting ukuran kertas
        $this->pdf->set_option('isRemoteEnabled', true); // <-- object ini yang perlu kita tambahkan 
        $this->pdf->render();
        $output = $this->pdf->output();
        file_put_contents("./assets/files/".$id_pengajuan."-".$nama_user.".pdf", $output);
        
    }


}
