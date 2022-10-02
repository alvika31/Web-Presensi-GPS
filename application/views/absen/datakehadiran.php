<main class="main-content position-relative border-radius-lg ">
    <div class="container-fluid">
        <div class="row" style="margin-bottom: 50px">
            <div class="col-12 text-center">

                <div class="card my-5" style="width:100%; padding-top: 30px;padding-bottom: 30px">
                    <div class="table-responsive">
                        <table class="table align-items-center mb-0">
                            <thead>

                                <tr>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">No.</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Tanggal</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Nama Pegawai</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jam Absen Masuk</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Jam Absen Pulang</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Info Absen</th>
                                    <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Action</th>
                                </tr>

                                <?php

                                foreach ($user as $users) { ?>
                                    <?php $tanggal = strtotime($users->tgl_absen);
                                    $jam_pulang = $users->status_absen;
                                    $jam = $users->jam_absen;
                                    ?>

                                    <tr>
                                        <td class="align-middle">
                                            <h6 class="mb-0 text-xs"><?= $i++ ?></h6>
                                        </td>
                                        <td class="align-middle">
                                            <h6 class="mb-0 text-xs">
                                                <?php
                                                setlocale(LC_ALL, 'id-ID', 'id_ID');
                                                ?>
                                                <?= strftime('%A, %d %B %Y', $tanggal) ?></h6>
                                        </td>
                                        <td class="align-middle">
                                            <h6 class="mb-0 text-xs"><?= $users->username ?></h6>
                                        </td>
                                        <?php if ($users->keterangan_absen == 'Sakit') { ?>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-danger">Sakit</span></h6>
                                            </td>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-danger"><span class="badge bg-gradient-danger">Sakit</span></h6>
                                            </td>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-danger">Sakit</span></h6>
                                            </td>

                                        <?php } elseif ($users->keterangan_absen == 'Cuti') { ?>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-warning">Cuti</span></h6>
                                            </td>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-warning">Cuti</span></h6>
                                            </td>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><span class="badge bg-gradient-warning">Cuti</span></h6>
                                            </td>
                                        <?php } else { ?>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><?= $users->jam_absen ?></h6>
                                            </td>
                                            <td class="align-middle">
                                                <h6 class="mb-0 text-xs"><?= $users->jam_absen_pulang ?></h6>
                                            </td>
                                            <?php if ($users->status_absen == 1) { ?>
                                                <td class="align-middle">
                                                    <h6 class="mb-0 text-xs"><span class="badge bg-gradient-danger">Belum Absen Pulang</span></h6>
                                                </td>
                                            <?php } elseif ($users->status_absen == 2) { ?>
                                                <td class="align-middle">
                                                    <h6 class="mb-0 text-xs"><span class="badge bg-gradient-success">Sudah Absen </span></h6>
                                                </td>
                                        <?php }
                                        } ?>





                                        <td class="align-middle">
                                            <a href="<?= site_url('absensi/detailKehadiran_byUser/' . $users->id_absen) ?>" class="btn btn-info btn-sm" style="padding: 10px" data-toggle="tooltip" data-placement="top" title="Detail Absen">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-checklist" viewBox="0 0 16 16">
                                                    <path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z" />
                                                    <path d="M7 5.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 1 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0zM7 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm-1.496-.854a.5.5 0 0 1 0 .708l-1.5 1.5a.5.5 0 0 1-.708 0l-.5-.5a.5.5 0 0 1 .708-.708l.146.147 1.146-1.147a.5.5 0 0 1 .708 0z" />
                                                </svg>
                                            </a>
                                        </td>



                                    </tr>
                                <?php } ?>
                            </thead>
                        </table>
                        <br>
                        <span class="badge badge-info"><?php echo $this->pagination->create_links(); ?></span>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>