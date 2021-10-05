<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Rel_fp_m extends MY_Model {

    protected $_table_name = 'rel_fp';
    protected $_primary_key = 'id_fp';
    protected $_primary_filter = 'strval';
    protected $_order_by = '';
    protected $_timestamps = FALSE;
    protected $_timestamps_field = [];


}
