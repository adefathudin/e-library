<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table mr-1"></i>
        Data Pengajuan Surat
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered small" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>ID</th>
                        <th>Jenis Pengajuan</th>
                        <th>Status</th>
                        <th>Keterangan</th>
                        <th>Tgl. Pengajuan</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script>
    var JS = {
        Init: function () {

            var _this = this;
            
            dataTableObject: null;
                   
            _this.dataTableObject = $('#dataTable').DataTable({
                select: true,
                processing: true,
                serverSide: true,
                searching : true,
                ordering  : true,
                lengthMenu: [[10, 25, 50, 100, -1], [5, 25, 50, 100, "All"]],
                pageLength : 10,
                scrollY   : false,
                scrollX: true,
                sDom: "<'row'<'col-sm-3'l><'col-sm-5'B><'col-sm-4'f>r>t<'row'<'col-sm-6'i><'col-sm-6'p>>",
                buttons: {
                    buttons: [ 
                        {
                            text: '<i class="fa fa-sync"></i>',
                            className:'btn btn-default btn-reload btn-sm',
                            action: function(e, dt, btn, config){
                                dt.ajax.reload( null, false );
                            }
                        },
                        {
                            extend: 'print',
                            text: '<i class="fa fa-print"></i>',
                            className:'btn btn-sm btn-default',
                            title: 'Data Produksi ',
                            exportOptions: {
                                columns:[0,1,2]
                            },
                            message: 'Dicetak pada tanggal 18/03/2021 10:49:17 melalui aplikasi BRISMA TSI Tools'
                        },
                        { 
                            text: '<i class="fa fa-plus"></i>', 
                            className:'btn btn-sm', 
                            action: function( e, dt, btn, config ){
                                $('#modalAddAccount').find('.modal-title').text('Add Account');
                                $('#modalAddAccount').modal();
                                $('.form-control').val('');
                            }
                        },
                        {
                            extend: 'selected',
                            text: '<i class="fa fa-eye"></i>',
                            className:'btn btn-sm btn-default',
                            enabled: false,
                            action: function(e, dt, btn, config){
                                
                                var $item = dt.row( { selected: true } ).data();
                                
                                var html;
                                
                                html += '<tr><td>Kategori</td><td>' + $item.account_name + '</td></tr>\n\
                                         <tr><td>Subject</td><td>' + $item.subject + '</td></tr>\n\
                                         <tr><td>RKEY 1</td><td>' + $item.rkey1 + '</td></tr>\n\
                                         <tr><td>RKEY 2</td><td>' + $item.rkey2 + '</td></tr>\n\
                                         <tr><td>Description</td><td>' + $item.des + '</td></tr>\n\
                                         <tr><td>Last Update</td><td>' + $item.last_update + '</td></tr>';
                                
                                $('.tbl-detail-account').html(html);
                                $('#modalDetailAccount').modal();
                                
                            }
                        },
                        {
                            extend: 'selected',
                            text: '<i class="fa fa-edit"></i>',
                            className:'btn btn-sm btn-default',
                            enabled: false,
                            action: function(e, dt, btn, config){
                                
                                var $form = $('#formAddAccount');
                                var $item = dt.row( { selected: true } ).data();
                                
                                $('#modalAddAccount').find('.modal-title').text('Edit Account');
                                
                                $form.find('[name="id"]').val($item.id);
                                $form.find('[name="category"]').val($item.account_name);
                                $form.find('[name="subject"]').val($item.subject);
                                $form.find('[name="rkey1"]').val($item.rkey1);
                                $form.find('[name="rkey2"]').val($item.rkey2);
                                $form.find('[name="des"]').val($item.des);
                                    
                                $('#modalAddAccount').modal();
                                
                            }
                        },
                        {
                            extend: 'selected',
                            text: '<i class="fa fa-ban"></i>',
                            className:'btn btn-sm btn-default',
                            action: function ( e, dt, button, config ) {
                                var data = dt.row( { selected: true } ).data();
                                if (!confirm('Ada yakin ingin menonaktifkan akun ' + data.subject)) {
                                    return false;
                                }
                                
                                $.ajax({
                                url:'http://172.18.3.27:2727/index/service/genuse/block_account',
                                data:{id: data.id},
                                type:'POST',
                                dataType:'json'
                                }).then(function(data){
                                    Swal.fire({
                                        icon: 'success',
                                        text: ''+ data.message +'',
                                        showConfirmButton: false,
                                        timer: 1500
                                    })
                                    $(".btn-reload").trigger('click');
                                });
                            }
                        },
                        {
                            extend: 'selected',
                            text: '<i class="fa fa-trash"></i>',
                            className:'btn btn-sm btn-default',
                            action: function ( e, dt, button, config ) {
                                var data = dt.row( { selected: true } ).data();
                                if (!confirm('Ada yakin ingin menghapus akun ' + data.subject)) {
                                    return false;
                                }
                                
                                $.ajax({
                                url:'http://172.18.3.27:2727/index/service/genuse/delete_account',
                                data:{id: data.id},
                                type:'delete',
                                dataType:'json'
                                }).then(function(data){
                                    Swal.fire({
                                        icon: 'success',
                                        text: ''+ data.message +'',
                                        showConfirmButton: false,
                                        timer: 1500
                                    })
                                    $(".btn-reload").trigger('click');
                                });
                            }
                        }
                                
                    ]
                },

                ajax      : {
                    url:"<?= base_url() ?>service/luser/list_pengajuan",
                    type: "GET"
                },
                columns: [
                    {data: null,"sortable": false, 
                        render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                        }  
                    },
                    {data: 'id_pengajuan', class:'text-left'},
                    {data: 'desc_layanan', class:'text-left'},
                    {data: 'desc_status', class:'text-left'},
                    {data: 'keterangan', class:'text-left'},
                    {data: 'add_time', class:'text-left'}
                    ]
            });
        },

    };

    $(document).ready(function () {
        JS.Init();
    })
</script>