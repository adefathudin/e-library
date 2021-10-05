<div class="row">
    <div class="col-xl-3 col-md-6">
        <div class="card bg-light mb-4">
            <div class="card-body d-flex align-items-center justify-content-between">
                <div class="Primary Card">
                    <a href="users">Jumlah user</a>
                </div>
                <div class="Primary Card"><?= $jumlah_user ?></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-light mb-4">
            <div class="card-body d-flex align-items-center justify-content-between">
                <div class="Primary Card">
                    <a href="pengaturan_layanan">Jenis Layanan</a>
                </div>
                <div class="Primary Card"><?= $jenis_layanan ?></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-light mb-4">
            <div class="card-body d-flex align-items-center justify-content-between">
                <div class="Primary Card">
                    <a href="rekapitulasi_laporan">Jumlah Pengajuan</a>
                </div>
                <div class="Primary Card"><?= $jumlah_pengajuan ?></div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-md-6">
        <div class="card bg-light mb-4">
            <div class="card-body d-flex align-items-center justify-content-between">
                <div class="Primary Card">Pengajuan Selesai</div>
                <div class="Primary Card"><?= $pengajuan_selesai ?></div>
            </div>
        </div>
    </div>
</div>