<?php

//defined('BASEPATH') OR exit('No direct script access allowed');

class Luser extends REST_Controller {

    function __construct($config = 'rest') {
        parent::__construct($config);
        $this->load->model(['ref_fp_m','ref_fp_upload_m','ref_pengajuan_m']);
    }
    
    public function fp_layanan_get(){
        
        $output['status'] = false;
        $id_layanan = $this->get('id_layanan');
        $user_id = $this->session->userdata('user_id');
        $id_pengajuan = '';
        
        $this->db->select('a.id_layanan, b.id_fp, b.desc_fp');
        $this->db->from('ref_fp a,rel_fp b,rel_layanan c');
        $this->db->where('a.id_layanan',$id_layanan);        
        $this->db->where('c.id_layanan',$id_layanan);
        $this->db->where('a.id_fp=b.id_fp');
        $result_fp = $this->db->get()->result();
        
        $this->db->select('a.upload_time, a.path_upload, b.desc_fp');
        $this->db->from('ref_fp_upload a, rel_fp b');
        $this->db->where('a.layanan_id',$id_layanan);        
        $this->db->where('a.add_id',$user_id);
        $this->db->where('a.fp_id=b.id_fp');
        $result_fp_eksist = $this->db->get()->result();
        
        $this->db->select('id_pengajuan');
        $this->db->from('ref_pengajuan');
        $this->db->where('layanan_id',$id_layanan);        
        $this->db->where('add_id',$user_id);
        $result_pengajuan = $this->db->get()->result();
        foreach ($result_pengajuan as $item){
            $id_pengajuan = $item->id_pengajuan;
        }
        
        if ($result_fp){
            $output['status'] = true;
            $output['id_layanan'] = $id_layanan;
            $output['id_pengajuan'] = $id_pengajuan;
            $output['status_pengajuan'] = $this->ref_pengajuan_m->get_count(['layanan_id' => $id_layanan, 'add_id' => $user_id, 'is_open' => false]);
            $output['fp_uploaded'] = $result_fp_eksist;
            $output['fp_layanan'] = $result_fp;
        }                
        $this->response($output);        
    }
    
    public function upload_dokumen_post(){
        
        $output['status'] = false;
        $id_layanan = $this->post('id_layanan');
        $user_id = $this->session->userdata('user_id');
        $id_fp = $this->post('id_fp');
        $desc_fp = $this->post('desc_fp');
        
        $upload_path = 'assets/image/Dokumen/';        
        
        $upload_eksist = $this->ref_fp_upload_m->get_by(['add_id' => $user_id, 'layanan_id' => $id_layanan, 'fp_id' => $id_fp]);
        if ($upload_eksist){
            foreach ($upload_eksist as $item){
                $this->ref_fp_upload_m->delete($item->id);
                unlink('assets/image/Dokumen/'.$item->path_upload);
            }
        }
        
        $this->load->library('upload', [
            'upload_path' => $upload_path,
            'allowed_types' => 'jpg|jpeg|png',
            'file_name' => $user_id.'-'.$id_layanan.'-'.$id_fp.'-'. uniqid()
        ]);

        if (!$this->upload->do_upload('fp')) {
            $output['message'] = $this->upload->display_errors();
            $this->response($output);
        } else {
            $data = $this->upload->data();
        }        
        
        $data_insert = [
            'layanan_id' => $id_layanan,
            'add_id' => $user_id,
            'status_upload' => true,
            'fp_id' => $id_fp,
            'path_upload' => $data['file_name']            
        ];
        
        $insert = $this->ref_fp_upload_m->save($data_insert);
        
        if ($insert){
            $output['status'] = true;
            $output['message'] = $desc_fp. " berhasil diupload";
        }

        $this->response($output);        
    }
    
    public function pengajuan_layanan_post(){
        
        $output['status'] = false;
        $id_layanan = $this->post('id_layanan');    
        $keterangan = $this->post('keterangan');
        $user_id = $this->session->userdata('user_id');
        $id_pengajuan = $this->post('id_pengajuan');
        
        if ($id_pengajuan == '') {
            $id_pengajuan = "PN_".uniqid();
            $data = [
                'id_pengajuan' => $id_pengajuan,
                'layanan_id' => $id_layanan,
                'add_id' => $user_id,
                'keterangan' => $keterangan,
                'status_pengajuan' => VERIFIKASI_DATA,
                'is_open' => false
            ];
            
            $insert = $this->ref_pengajuan_m->save($data);
            
        } else {
            $insert = $this->ref_pengajuan_m->save(['status_pengajuan' => VERIFIKASI_DATA,'is_open' => false], $id_pengajuan);
        }
        
        if ($insert){
            $output['status'] = true;
            $output['message'] = "Pengajuan berhasil dikirim. ID pengajuan : ".$id_pengajuan;
        }
        
        $this->response($output);
        
    }
    
    public function list_pengajuan_get(){
        
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
                $where[$col['data']] = $col['search']['value'];
            }
        }
        
        
        $totalRecords = $this->ref_pengajuan_m->get_count($where);

        if ($search && $search['value']) {
            $this->db->like('id_pengajuan', $search['value']);
        }

        $totalFiltered = $this->ref_pengajuan_m->get_count($where);

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
        $this->db->where('a.add_id = "' . $this->session->userdata('user_id') . '"');
        $this->db->where('b.user_id = "' . $this->session->userdata('user_id') . '"');
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
}
