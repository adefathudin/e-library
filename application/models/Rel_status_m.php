<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Rel_status_m extends MY_Model {

    protected $_table_name = 'rel_status';
    protected $_primary_key = 'id_status';
    protected $_primary_filter = 'strval';
    protected $_order_by = '';
    protected $_timestamps = FALSE;
    protected $_timestamps_field = [];


}
