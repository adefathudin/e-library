
<div class="card mb-4">
    <div class="card-header">
        <i class="fas fa-table mr-1"></i>
        
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered small" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>ID Pengajuan</th>
                        <th>Jenis Pengajuan</th>
                        <th>Tgl. Pengajuan</th>
                        <th>Keterangan</th>
                        <th>Status Pengajuan</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="detailPengajuanModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" class="form-update-status-pengajuan" action="<?= base_url() ?>service/loperator/update_status_pengajuan">
                <input type="hidden" name="level" value="<?= $data_user->level?>">
                <div class="modal-header">
                    <h6 class="modal-title" id="exampleModalLabel">Detail Pengajuan</h6>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table class="table small">
                        <tbody class="table-detail-pengajuan">
                        </tbody>
                        <tr bgcolor="#e6f9ff" class="acc-reject-form">
                            <td>Persetujuan <?= $data_user->level ?></td>
                            <td>:</td>
                            <td>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input inlineRadio" type="radio" name="accept" id="inlineRadio1" value="accept" checked="checked">
                                    <label class="form-check-label" for="inlineRadio1">Setujui</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input inlineRadio" type="radio" name="accept" id="inlineRadio2" value="reject">
                                    <label class="form-check-label" for="inlineRadio2">Tolak</label>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="form-group">
                        <textarea class="keterangan-reject form-control mt-3" name="keterangan_reject" placeholder="keterangan..."></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary acc-reject-form">submit</button>
                </div>
            </form>
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
                            extend: 'selected',
                            text: '<i class="fa fa-eye"></i> Detail',
                            className:'btn btn-sm btn-default',
                            enabled: false,
                            action: function(e, dt, btn, config){
                                
                                var $form = $('#formAddAccount');
                                var $item = dt.row( { selected: true } ).data();
                                var detail = '';
                                $('.keterangan-reject').hide();
                                $('.inlineRadio').prop('checked', false);
                                
                                $.ajax({
                                    url:'<?= base_url() ?>service/loperator/detail_pengajuan',
                                    type: 'GET',
                                    dataType: 'json',
                                    data: {id_layanan:$item.layanan_id,user_id:$item.add_id,operator_id:$item.operator_id,ka_ukpd_id:$item.ka_ukpd_id}
                                }).then(function (data) {
                                    var i;
                                    if (data.status) {
                                        detail +=
                                                '<input type="hidden" name="id_pengajuan" value="'+$item.id_pengajuan+'">' +
                                                '<tr><td>ID Pengajuan</td><td>:</td><td>'+$item.id_pengajuan+'</td></tr>' + 
                                                '<tr><td>Jenis Layanan</td><td>:</td><td>'+$item.desc_layanan+'</td></tr>' +
                                                '<tr><td>Tanggal Pengajuan</td><td>:</td><td>'+$item.add_time+'</td></tr>' +
                                                '<tr><td>Status Pengajuan</td>\n\
                                                    <td>:</td><td>'+$item.desc_status+'. '+$item.operator_note+$item.ka_ukpd_note+'</td></tr>' +
                                                '<tr><td>Persyaratan</td><td>:</td><td>';
                                        
                                        //file pendukung
                                        for (i=0;i<data.fp_eksist.length;i++){
                                             detail += 
                                                     '<div class="form-check">' +
                                                        '<input class="form-check-input checkbox-fp" name="checkbox_fp[]"' +
                                                            'type="checkbox" value="'+data.fp_eksist[i].id+'" id="fp'+data.fp_eksist[i].id+'"' +
                                                            'checked disabled="disabled">'+
                                                        '<label class="form-check-label" for=""fp'+data.fp_eksist[i].id+'"">'+
                                                          '<a href="#" data-fp="'+data.fp_eksist[i].path_upload+'"' +
                                                          'data-fp-name="'+data.fp_eksist[i].desc_fp+'"' +
                                                          'data-fp-date="'+data.fp_eksist[i].upload_time+'"' +
                                                          'class="show-image">'+data.fp_eksist[i].desc_fp+'</a>'+
                                                        '</label>'+
                                                      '</div>';
                                        }
                                        detail += '</td></tr>';
                                        
                                        //operator name
                                        if ($item.status_pengajuan == '4' || $item.status_pengajuan == '3'){
                                            for (i=0;i<data.operator_name.length;i++){
                                                 detail += '<tr><td>Diverifikasi oleh</td><td>:</td><td>'+data.operator_name[i].nama_lengkap +
                                                           ' ('+data.operator_name[i].status_jabatan+')</td></tr>' +
                                                           '<tr><td>Tanggal Verifikasi</td><td>:</td><td>'+$item.operator_time+'</td></tr>';
                                            }
                                        } else if ($item.status_pengajuan == '2' || $item.status_pengajuan == '1'){
                                            for (i=0;i<data.operator_name.length;i++){
                                                 detail += '<tr><td>Diverifikasi oleh</td><td>:</td><td>'+data.ka_ukpd_name[i].nama_lengkap +
                                                           ' ('+data.operator_name[i].status_jabatan+')</td></tr>' +
                                                           '<tr><td>Tanggal Verifikasi</td><td>:</td><td>'+$item.operator_time+'</td></tr>';
                                            }
                                        }
                                        
                                        
                                        
                                    }
                                    
                                    $('.table-detail-pengajuan').html(detail);
                                });
                                
                                if ($item.status_pengajuan == '<?= VERIFIKASI_DATA ?>' && '<?= $data_user->level ?>' == '<?= LEVEL2 ?>'){
                                    $('.acc-reject-form').show();
                                } else if ($item.status_pengajuan == '<?= ACC_OPERATOR ?>' && '<?= $data_user->level ?>' == '<?= LEVEL1 ?>'){
                                    $('.acc-reject-form').show();
                                } else {
                                    $('.acc-reject-form').hide();
                                }
                                
                                $('#detailPengajuanModal').modal();
                                
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
                    {data: 'nama_lengkap', class:'text-left'},
                    {data: 'desc_layanan', class:'text-left'},
                    {data: 'keterangan', class:'text-left'},
                    {data: 'desc_status', 
                        render: function (data, type, row, meta) {
                            var st = '';
                            var dok = '';
                            
                            if (row.status_pengajuan == 4){
                                st += '<br><i class="fa fa-edit"></i> Operator note:  '+row.operator_note;
                            } else if (row.status_pengajuan == 2){
                                st += '<br><i class="fa fa-edit"></i> Ka. UPKD note:  '+row.ka_ukpd_note;
                            }
                            
                            dok += row.desc_status+ ' ' + st;
                            return dok;
                        }  
                    },
                    ]
            });
            
            $(".form-update-status-pengajuan").validate({
            submitHandler: function (form) {
                $(form).ajaxSubmit({
                    url: $(form).attr('action'),
                    type: $(form).attr('method'),
                    beforeSubmit: function () {
                        if (!confirm("Anda akan merubah status pengajuan!")) {
                            return false;
                        }
                        $(form).find('button[type="submit"]').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-circle-notch"></i> Please wait...');
                    },
                    success: function (data) {
                        if (data.status) {
                            $('.btn-reload').click();
                            Swal.fire({
                                icon: 'success',
                                text: 'Berhasil merubah status pengajuan',
                                showConfirmButton: false,
                                timer: 2000
                            })
                            $('.form-control').val('');
                            $('#detailPengajuanModal').modal('toggle');
                            $('.keterangan-reject').hide(1000);
                            $('.checkbox-fp').prop('disabled', true);
                            $('.checkbox-fp').prop('checked', true);
                        }

                        $(form).find('button[type="submit"]').removeAttr('disabled').html('Pilih');
                    }
                });
            }
        });
    
            
        },

    };
   
    $(document).on('click', '.show-image', function () {
        var fp_url = $(this).attr('data-fp');
        var fp_name = $(this).attr('data-fp-name');
        var fp_date = $(this).attr('data-fp-date');
        Swal.fire({
            imageUrl: '<?= base_url()?>assets/image/Dokumen/'+fp_url,
            imageWidth: 600,
            imageHeight: 300,
            title: fp_name,
            text: 'Tgl. Upload: '+fp_date,
            showClass: {
              popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
              popup: 'animate__animated animate__fadeOutUp'
            }
          })
    });
    
    $(document).on('click', '.show-ktp', function () {
        var url = $(this).attr('data-url');
        Swal.fire({
            imageUrl: '<?= base_url()?>assets/image/KTP/'+url,
            imageWidth: 600,
            imageHeight: 300,
            showClass: {
              popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
              popup: 'animate__animated animate__fadeOutUp'
            }
          })
    });
    
    $('input').click(function() {
        if($('#inlineRadio1').is(':checked')) {
            $('.keterangan-reject').hide(1000);
            $('.checkbox-fp').prop('disabled', true);
            $('.checkbox-fp').prop('checked', true);
        } else {
            Swal.fire({
                icon: 'info',
                text: 'Jika dokumen persyaratan kurang jelas, harap centang dokumen persyaratan yang perlu direvisi.',
                showConfirmButton: true,
                showClass: {
                  popup: 'animate__animated animate__backInDown'
                },
                hideClass: {
                  popup: 'animate__animated animate__backOutDown'
                }
            });
            $('.checkbox-fp').removeAttr('disabled');
            $('.keterangan-reject').show(1000);
            $('.checkbox-fp').prop('checked', false);
        }
    });
    
    $(document).ready(function () {
        JS.Init();
    })
</script>