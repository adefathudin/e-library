<div class="row">
    <div class="col-6">
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-envelope-open-text mr-1"></i>
                Jenis Surat
            </div>
            <div class="card-body">
                <form class="form-inline get-fp-layanan" method="get" action="<?= base_url() ?>service/luser/fp_layanan">
                    <div class="form-group mb-2">
                        <select class="form-control form-control-sm" name='id_layanan'>
                            <option>-</option>
                            <?php
                            $no = 1;
                            foreach ($jenis_layanan as $layanan) {
                                echo "<option value='" . $layanan->id_layanan . "'>" . $no++ . ". " . $layanan->desc_layanan . "</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-sm btn-secondary mx-sm-2 mb-2 btn-pilih-layanan">Pilih</button>
                </form>
                <div class="alert alert-secondary small mt-3 alert-list-dokumen" role="alert">
                    Silahkan pilih jenis surat terlebih dahulu
                </div>
                <div class="list-group list-pendukung-surat small">
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-6 form-head-upload">
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-upload mr-1"></i>
                Upload Dokumen Pendukung
            </div>
            <div class="card-body">
                <div class="alert alert-secondary small label-upload" role="alert">
                    No data available
                </div>
                <form class="form-group form-upload-dokumen" method="post" action="<?= base_url() ?>service/luser/upload_dokumen">
                    <div class="input-hidden"></div>
                    <input class="form-control form-control-sm file-upload" type="file" accept="image/x-png,image/gif,image/jpeg" name="fp" required>
                    <button class="btn btn-sm btn-secondary mt-3 btn-upload-surat" type="submit">Upload</button>
                </form>
            </div>
        </div>        
    </div>

    <div class="col-6 form-head-pengajuan">
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-user-edit mr-1"></i>
                Form Pengajuan
            </div>
            <div class="card-body">
                <div class="form-group row">
                    <label class="col-sm-3 col-form-label">Persyaratan</label>
                    <div class="col-sm-9 list-pendukung-surat-eksist">
                        No data available
                    </div>
                </div>
                <form method="POST" class="form-pengajuan-layanan" action="<?= base_url() ?>service/luser/pengajuan_layanan">
                    <input type="hidden" class="id_layanan" name="id_layanan"/>
                    <input type="hidden" class="id_pengajuan" name="id_pengajuan"/>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Keterangan</label>
                        <div class="col-sm-9">
                            <textarea name="keterangan" class="form-control"></textarea>
                        </div>
                    </div>
                    <button class="btn btn-secondary btn-sm btn-pengajuan-layanan" disabled="disabled">submit</button>
                </form>
            </div>
        </div>
    </div>
    
</div>

<script src="<?= base_url() ?>assets/jQuery/jquery.validation.min.js"></script>
<script src="<?= base_url() ?>assets/jQuery/jquery.form.js"></script>

<script>

    $('.form-head-pengajuan').hide();
    $('.form-head-upload').hide();

    var $form = $(".get-fp-layanan");
    $form.validate({
        submitHandler: function (form) {
            $(form).ajaxSubmit({
                url: $(form).attr('action'),
                type: $(form).attr('method'),
                beforeSubmit: function () {
                    $('.form-head-pengajuan').hide();
                    $('.form-head-upload').hide();
                    $(form).find('button[type="submit"]').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-circle-notch"></i> Please wait...');
                },
                success: function (data) {
                    var i, status, upload_time;
                    var dok_eksist = '';
                    var html = '';
                    $('.label-upload').text('Pilih dokumen yang akan diupload');
                    $('.btn-upload-surat').attr('disabled', 'disabled');
                    
                    if (data.status_pengajuan == 1){
                        Swal.fire({
                            icon: 'info',
                            text: 'Layanan ini sudah pernah anda diajukan. ID Pengajuan '+ data.id_pengajuan +'',
                            showConfirmButton: true,
                            showClass: {
                                popup: 'animate__animated animate__backInDown'
                            },
                            hideClass: {
                                popup: 'animate__animated animate__backOutDown'
                            }
                        })
                    } else {
                        
                        if (data.status) {
                            $('.form-head-pengajuan').show(2000);
                            $('.form-head-upload').show(2000);
                            $('.list-pendukung-surat').show(2000);
                            $('.id_layanan').val(data.id_layanan);
                            $('.id_pengajuan').val(data.id_pengajuan);

                            for (i = 0; i < data.fp_layanan.length; i++) {
                                html += '<a href="#" data-layanan="' + data.fp_layanan[i].id_layanan + '" data-fp-desc="' + data.fp_layanan[i].desc_fp + '" data-fp="' + data.fp_layanan[i].id_fp + '" class="list-group-item list-group-item-action upload-dokumen">' + data.fp_layanan[i].desc_fp + '</a>';
                                
                                $('.alert-list-dokumen').text('Silahkan klik dan upload ' + (i + 1) + ' dokumen persyaratan dibawah ini');
                            }

                            for (j = 0; j < data.fp_uploaded.length; j++) {
                                dok_eksist += '<div class="show-fp small list-group-item list-group-item-action"><button data-fp="' +data.fp_uploaded[j].path_upload+ '" class="btn-show-image btn btn-light btn-sm"><i class="fa fa-images"></i></button> ' + data.fp_uploaded[j].desc_fp + ' <span class="small font-italic">(uploaded '+data.fp_uploaded[j].upload_time+')</span></div>';
                            }
                        }

                        if (i == j){
                            $('.btn-pengajuan-layanan').removeAttr('disabled');
                        } else {
                            $('.btn-pengajuan-layanan').attr('disabled', 'disabled');
                        }                    
                    }
                    
                    $('.list-pendukung-surat').html(html);
                    $('.list-pendukung-surat-eksist').html(dok_eksist);
                    $(form).find('button[type="submit"]').removeAttr('disabled').html('Pilih');
                }
            });
        }
    });


    $(".form-upload-dokumen").validate({
        submitHandler: function (form) {
            $(form).ajaxSubmit({
                url: $(form).attr('action'),
                type: $(form).attr('method'),
                beforeSubmit: function () {
                    if (!confirm("Upload dokumen?")) {
                        return false;
                    }
                    $(form).find('button[type="submit"]').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-circle-notch"></i> Please wait...');
                },
                success: function (data) {
                    if (data.status) {
                        $('.btn-pilih-layanan').click();
                        Swal.fire({
                            icon: 'success',
                            text: ''+ data.message +'',
                            showConfirmButton: false,
                            timer: 1500
                        })
                    }
                    $('.file-upload').val('');
                    $(form).find('button[type="submit"]').removeAttr('disabled').html('Upload');
                }
            });
        }
    });

    $(".form-pengajuan-layanan").validate({
        submitHandler: function (form) {
            $(form).ajaxSubmit({
                url: $(form).attr('action'),
                type: $(form).attr('method'),
                beforeSubmit: function () {
                    if (!confirm("Yakin mengajukan layanan?")) {
                        return false;
                    }
                    $(form).find('button[type="submit"]').attr('disabled', 'disabled').html('<i class="fa fa-spin fa-circle-notch"></i> Please wait...');
                },
                success: function (data) {
                    if (data.status) {
                        Swal.fire({
                            icon: 'success',
                            text: ''+ data.message +'',
                            showConfirmButton: true
                        })
                        $('.form-head-pengajuan').hide(2000);
                        $('.form-head-upload').hide(2000);
                        $('.list-pendukung-surat').hide(2000);
                        $('.form-control').val('');
                    }
                    $(form).find('button[type="submit"]').removeAttr('disabled').html('Pilih');
                }
            });
        }
    });
    

    $(document).on('click', '.upload-dokumen', function () {
        var id_layanan = $(this).attr('data-layanan');
        var id_fp = $(this).attr('data-fp');
        var desc_fp = $(this).attr('data-fp-desc');
        
        $('.btn-upload-surat').removeAttr('disabled');

        $('.input-hidden').html('<input type="hidden" name="id_layanan" value="' + id_layanan + '"/> <input type="hidden" name="id_fp" value="' + id_fp + '"/> <input type="hidden" name="desc_fp" value="' + desc_fp + '"/>')

        $('.label-upload').text(desc_fp);
    });
    
    $(document).on('click', '.btn-show-image', function () {
        var fp_url = $(this).attr('data-fp');
        Swal.fire({
            imageUrl: '<?= base_url()?>assets/image/Dokumen/'+fp_url,
            imageWidth: 600,
            imageHeight: 300,
            showClass: {
              popup: 'animate__animated animate__fadeInDown'
            },
            hideClass: {
              popup: 'animate__animated animate__fadeOutUp'
            }
          })
    })

</script>
