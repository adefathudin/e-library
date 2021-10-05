<div class="card mb-4 small">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>User ID</th>
                        <th>Nama</th>
                        <th>TTL</th>
                        <th>JK</th>
                        <th>Alamat</th>
                        <th>Email</th>
                        <th>No. HP</th>
                        <th>Role</th>
                        <th>Joined</th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="modal fade" id="modalAccount" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">  
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form class="form-account" method="POST" action="<?= base_url('service/admin/account') ?>">
                <div class="modal-header">
                    <h5 class="modal-title">Register</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body small">
                    <div class="card">
                        <div class="card-body">
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Nama</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control form-control-sm" name="nama" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">TTL</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-3">
                                    <input type="text" class="form-control form-control-sm" name="tempat_lahir" required="required">
                                </div>
                                <div class="col-sm-5">
                                    <input type="date" class="form-control form-control-sm" name="tanggal_lahir" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Jenis Kelamin</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <select class="form-control" required name="jenis_kelamin">
                                        <option value="L">Laki-laki</option>
                                        <option value="P">Perempuan</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Email</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control form-control-sm" name="email" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">No. Telepon</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control form-control-sm" name="no_telepon" required="required">
                                </div>
                            </div>    
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Alamat</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <textarea type="text" class="form-control" name="alamat"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Role</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <select class="form-control" required name="role">
                                        <option value="1">Admin</option>
                                        <option value="2">User</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Password</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <input type="password" id="password" class="form-control form-control-sm" name="password" required="required">
                                </div>
                            </div>    
                            <div class="form-group row">
                                <label class="font-weight-bold col-sm-3 col-form-label">Re-enter Pass</label>
                                <label class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-8">
                                    <input type="password" id="password_2" class="form-control form-control-sm" name="password_2" required="required">
                                    <span class="small text-danger alert-password"></span>
                                </div>
                            </div>    
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-secondary btn-sm small"><i class="fa fa-eraser"></i> Reset</button>
                    <button type="button" class="btn btn-secondary btn-sm small" data-dismiss="modal"><i class="fa fa-ban"></i> Close</button>
                    <button type="sumbit" class="btn btn-secondary btn-sm btn-account small" disabled="disabled"><i class="fa fa-save"></i> Save</button>
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
            _this._init_submit_account();
                   
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
                            text: '<i class="fa fa-plus"></i>',
                            className:'btn btn-sm btn-default', 
                            action: function( e, dt, btn, config ){
                                $('#modalRegister').find('.title-header').text('Register');
                                $('#modalAccount').modal();
                            }
                        },
                        {
                            text: '<i class="fa fa-sync"></i>',
                            className:'btn btn-default btn-reload btn-sm',
                            action: function(e, dt, btn, config){
                                dt.ajax.reload( null, false );
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
                            text: '<i class="fa fa-trash"></i>',
                            className:'btn btn-sm btn-default',
                            action: function ( e, dt, button, config ) {
                                var data = dt.row( { selected: true } ).data();
                                if (!confirm('Ada yakin ingin menghapus akun ' + data.nama_lengkap)) {
                                    return false;
                                }

                                $.ajax({
                                url:'<?= base_url() ?>service/admin/account',
                                data:{user_id: data.user_id},
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
                    url:"<?= base_url() ?>service/admin/users",
                    type: "GET"
                },
                columns: [
                    {data: null,"sortable": false, 
                        render: function (data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                        }  
                    },
                    {data: 'nik', class:'text-left'},
                    {data: 'nama_lengkap', class:'text-left'},
                    {data: 'tempat_lahir',
                        render: function (data, type, row, meta) {
                        return row.tempat_lahir + ', ' + row.tanggal_lahir;
                        }  
                    },
                    {data: 'jenis_kelamin', class:'text-left'},
                    {data: 'alamat', class:'text-left'},
                    {data: 'email', class:'text-left'},
                    {data: 'nomor_hp', class:'text-left'},
                    {data: 'level', class:'text-left',
                        render: function (data, type, row, meta) {
                            var level = '';
                            if (row.level == '<?= ADMIN ?>'){
                                level = "Admin";
                            } else if (row.level == '<?= USER ?>') {
                                level = "User";
                            }
                            return level;
                        }  
                    },
                    {data: 'joined', class:'text-left'}
                    ]
            });
            
            $("#password_2").keyup(function() {
                var password = $("#password").val();
                if (password != $(this).val()){
                    $('.alert-password').text('Password tidak sama');
                    $('.btn-account').attr('disabled', 'disabled');
                } else {
                    $('.alert-password').text('');
                    $('.btn-account').removeAttr('disabled');
                }
            });
        },
        
        _init_submit_account: function () {

            var $form = $(".form-account");

            $form.validate({
                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        url: $(form).attr('action'),
                        type: $(form).attr('method'),
                        beforeSubmit: function () {
                            if (!confirm("Simpan data register?")){
                                return false;
                            }
                            $(form).find('button[type="submit"]').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-circle-notch"></i> processing');
                        },
                        success: function (data) {
                            if (data.status) {
                                Swal.fire({
                                    position: 'top-end',
                                    icon: 'success',
                                    title: data.message,
                                    showConfirmButton: false,
                                    timer: 1000
                                  });
                                  $('#form-register').modal('toggle');
                                  $('.btn-reload').trigger('click');
                            } else {
                                 Swal.fire({
                                    position: 'top-end',
                                    icon: 'error',
                                    title: data.message,
                                    showConfirmButton: true
                                  });
                            }
                            $(form).find('button[type="submit"]').removeAttr('disabled').html('<i class="fa fa-save"></i> Save');
                        }
                    });
                }
            });
        },

    };
   
    $(document).ready(function () {
        JS.Init();
    })
</script>