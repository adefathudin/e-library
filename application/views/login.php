<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title><?= APP_TITLE ?></title>
        <!-- Google Fonts -->
        <link href="<?= base_url() ?>assets/login/https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="<?= base_url() ?>assets/login/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="<?= base_url() ?>assets/login/assets/vendor/icofont/icofont.min.css" rel="stylesheet">
        <link href="<?= base_url() ?>assets/login/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="<?= base_url() ?>assets/login/assets/vendor/venobox/venobox.css" rel="stylesheet">
        <link href="<?= base_url() ?>assets/login/assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="<?= base_url() ?>assets/login/assets/vendor/aos/aos.css" rel="stylesheet">

        <!-- Template Main CSS File -->
        <link href="<?= base_url() ?>assets/login/assets/css/style.css" rel="stylesheet">

    </head>

    <body>

        <!-- ======= Mobile nav toggle button ======= -->
        <button type="button" class="mobile-nav-toggle d-xl-none"><i class="icofont-navigation-menu"></i></button>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex flex-column justify-content-center">

            <nav class="nav-menu">
                <ul>
                    <li class="active"><a href="#hero"><i class="bx bx-home"></i> <span>Home</span></a></li>
                    <li><a href="#signup"><i class="bx bx-user-plus"></i> <span>Sign Up</span></a></li>
                </ul>
            </nav><!-- .nav-menu -->

        </header><!-- End Header -->

        <!-- ======= Hero Section ======= -->
        <section id="hero" class="d-flex flex-column justify-content-center">
            <div class="container" data-aos="zoom-in" data-aos-delay="100">

                <h1><?= APP_TITLE ?></h1>
                <p><?= APP_SUBTITLE ?></p><br>               

                <div class="card col-3">
                    <?php
                    $msg = $this->session->flashdata('message');
                    if (isset($msg)){
                        echo " <div class='card-header'>
                        <span class='text-danger'>".$msg."</span>
                    </div>";
                    } ?>
                   
                    <div class="card-body">
                        <form action="<?= base_url() ?>auth/login" method="post" role="form">
                            <div class="form-group row">
                                <div class="col-sm">
                                    <input type="email" required="required" name="email" class="form-control form-control-sm" id="inputEmail3" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm">
                                    <input type="password" required="required" name="password" class="form-control form-control-sm" id="inputPassword3" placeholder="Password">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-10">
                                    <button type="submit" class="btn btn-primary btn-sm"><i class="bx bx-key"></i> Sign in</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>               
            </div>
        </section><!-- End Hero -->

        <main id="main">
            <!-- ======= Contact Section ======= -->
            <section id="signup" class="contact">
                <div class="container" data-aos="fade-up">
                    <div class="section-title">
                        <h2>Sign Up</h2>
                    </div>
                    <div class="row mt-1">
                        <div class="col-lg-12 mt-5 mt-lg-0">
                            <form action="<?= base_url() ?>service/auth/signup" method="post" role="form" class="signup-form">
                                <input type="hidden" name="level" value="user">
                                <input type="hidden" name="status_jabatan" value="Masyarakat">                  
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label class="small">NIK*</label>
                                        <input type="number" class="form-control" name="nik" placeholder="ex. 1234567890" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="small">Nama Lengkap*</label>
                                        <input type="text" class="form-control" name="nama" placeholder="ex. Jhon Pantau" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-3 form-group">
                                        <label class="small">Tempat Lahir*</label>
                                        <input type="text" name="tempat_lahir" class="form-control" placeholder="ex. Marunda" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label class="small">Tanggal Lahir*</label>
                                        <input type="date" class="form-control" min="1950-01-01" max="2004-01-01" name="tanggal_lahir" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label class="small">Jenis Kelamin*</label>
                                        <select class="form-control" name="jenis_kelamin" required="required">
                                            <option value="L">Laki-laki</option>
                                            <option value="P">Perempuan</option>
                                        </select>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <label class="small">Agama*</label>
                                        <select class="form-control" name="agama" required="required">
                                            <option value="Islam">Islam</option>
                                            <option value="Kristen">Kristen</option>
                                            <option value="Hindu">Hindu</option>
                                            <option value="Budha">Budha</option>
                                            <option value="Kristen">Kristen</option>
                                            <option value="Konghucu">Konghucu</option>
                                        </select>
                                    </div>
                                    <div class="col-md-3 form-group">
                                        <label class="small">Profesi*</label>
                                        <input type="text" name="profesi" class="form-control" placeholder="ex. Wiraswasta, Karyawan, Dokter" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-4 form-group">
                                        <label class="small">Alamat E-Mail*</label>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="ex. abcd@mail.com" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <label class="small">Nomor HP*</label>
                                        <input type="number" class="form-control" name="nomor_hp" placeholder="ex. 0812345678" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <label class="small">KTP (Scan/Foto e-KTP)*</label>
                                        <input type="file" class="form-control" name="ktp" placeholder="Tanggal Lahir" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="small">Alamat Rumah*</label>
                                    <textarea class="form-control" name="alamat" rows="3" required="required"></textarea>
                                    <div class="validate"></div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-6 form-group">
                                        <label class="small">Password*</label>
                                        <input type="password" name="password" class="form-control" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label class="small">Ulangi Password*</label>
                                        <input type="password" class="form-control" name="repassword" required="required"/>
                                        <div class="validate"></div>
                                    </div>
                                </div>
                                <div class="alert-signup">                                    
                                   
                                </div>
                                <div class="text-center"><button class="btn btn-primary btn-signup" type="submit"><i class="bx bx-user-plus"></i> Sign Up</button></div>
                            </form>

                        </div>

                    </div>

                </div>
            </section><!-- End Contact Section -->

        </main><!-- End #main -->

        <!-- Vendor JS Files -->
        <script src="<?= base_url() ?>assets/login/assets/vendor/jquery/jquery.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/php-email-form/validate.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/counterup/counterup.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/venobox/venobox.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/typed.js/typed.min.js"></script>
        <script src="<?= base_url() ?>assets/login/assets/vendor/aos/aos.js"></script>
        <script src="<?= base_url() ?>assets/jQuery/jquery.validation.min.js"></script>
        <script src="<?= base_url() ?>assets/jQuery/jquery.form.js"></script>

        <!-- Template Main JS File -->
        <script src="<?= base_url() ?>assets/login/assets/js/main.js"></script>
        
        <script>
            
            $(".signup-form").validate({
                rules: {
                },
                messages: {
                },
                submitHandler: function (form) {
                    $(form).ajaxSubmit({
                        url: $(form).attr('action'),
                        type: $(form).attr('method'),
                        beforeSubmit: function () {
                            if (!confirm("Lanjutkan registrasi akun?")) {
                                return false;
                            }
                            $(".btn-signup").attr('disabled', 'disabled')
                                    .html('Please wait');
                        },
                        success: function (data) {
                            if (data.status){
                                $('.alert-signup').html('<div class="alert alert-success text-center" role="alert">'+data.message+'</div>');
                            } else {
                                $('.alert-signup').html('<div class="alert alert-danger text-center" role="alert">'+data.message+'</div>');
                            }
                            $(".btn-signup").removeAttr('disabled').html('<i class="bx bx-user-plus"></i> Sign Up');

                        }
                    });
                }
            });
        </script>

    </body>

</html>