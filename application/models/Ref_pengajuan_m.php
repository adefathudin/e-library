<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Ref_pengajuan_m extends MY_Model {

    protected $_table_name = 'ref_pengajuan';
    protected $_primary_key = 'id_pengajuan';
    protected $_primary_filter = 'strval';
    protected $_order_by = '';
    protected $_timestamps = FALSE;
    protected $_timestamps_field = [];


}
