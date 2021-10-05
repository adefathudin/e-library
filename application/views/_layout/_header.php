<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title><?= $title ?> - <?= APP_TITLE?></title>
        <link href="<?= base_url()?>assets/css/styles.css" rel="stylesheet" />
        <link href="<?= base_url()?>assets/dataTables/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="<?= base_url()?>assets/css/animate.min.css" rel="stylesheet" />
        <link href="<?= base_url()?>assets/dataTables/buttons.dataTables.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="<?= base_url()?>assets/dataTables/dataTables.select.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="<?= base_url()?>assets/select2/select2.min.css" rel="stylesheet" crossorigin="anonymous" />
        <link href="<?= base_url()?>assets/select2/select2-bootstrap.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="<?= base_url()?>assets/jQuery/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-light bg-light">
            
            <a class="navbar-brand" href="<?= base_url() ?>"><?= APP_TITLE ?></a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><?= $data_user->nama_lengkap ?><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="<?= base_url() ?>profile">Profile</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="<?= base_url()?>auth/logout">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                            <div class="sb-sidenav-menu-heading">Main Menu</div>
                            
                            <?php if ($data_user->level == LEVEL3){ ?>

                            <a class="nav-link" href="<?= base_url() ?>luser/dashboard">
                                <div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
                                Dashboard
                            </a>
                            <a class="nav-link" href="<?= base_url() ?>luser/pengajuan">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Pengajuan
                            </a>
                            <a class="nav-link" href="<?= base_url() ?>luser/monitoring">
                                <div class="sb-nav-link-icon"><i class="fas fa-tv"></i></div>
                                Monitoring
                            </a>
                            
                            <?php } else if ($data_user->level == LEVEL2){ ?>
                            
                            <a class="nav-link" href="<?= base_url() ?>admin/dashboard">
                                <div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
                                Dashboard
                            </a>
                            <a class="nav-link" href="<?= base_url() ?>admin/users">
                                <div class="sb-nav-link-icon"><i class="fas fa-user-cog"></i></div>
                                Manajemen Users
                            </a>  
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chalkboard-teacher"></i></div>
                                Pelayanan
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="<?= base_url()?>admin/pengaturan_layanan">Pengaturan Layanan</a>
                                    <a class="nav-link" href="<?= base_url()?>admin/informasi_pengajuan">Informasi Pengajuan</a>
                                </nav>
                            </div>
                            
                            <a class="nav-link" href="<?= base_url() ?>admin/rekapitulasi_laporan">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Rekapitulasi Laporan
                            </a>
                            
                            <?php } else if ($data_user->level == LEVEL1){ ?>
                            
                            <a class="nav-link" href="<?= base_url() ?>admin/dashboard">
                                <div class="sb-nav-link-icon"><i class="fas fa-home"></i></div>
                                Dashboard
                            </a>
                            <a class="nav-link" href="<?= base_url() ?>admin/informasi_pengajuan">
                                <div class="sb-nav-link-icon"><i class="fas fa-book"></i></div>
                                Pelayanan
                            </a>
                            
                            <?php }?>
                            
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        <?= $data_user->level ?>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <ol class="breadcrumb mt-4">
                            <li class="breadcrumb-item active"><?= $title ?></li>
                        </ol>

                        <!-- START CONTENT -->