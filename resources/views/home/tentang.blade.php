@extends('layouts.app')

@section('content')

<div class="py-4">

    <div class="text-center mb-5 scroll-scale-up">
        <h1 class="fw-bold display-5 text-dark">
            Tentang Kami
        </h1>

        <p class="lead text-secondary">
            Selamat datang di
            <span class="text-danger fw-semibold">
                Teras Mobil 99
            </span>
        </p>
    </div>

    <div class="row g-4 scroll-scale-up">

        <div class="col-lg-7">

            <div class="card border-0 shadow-sm h-100">
                <div class="card-body p-4">

                    <h3 class="fw-bold mb-4">
                        Profil Perusahaan
                    </h3>

                    <p class="text-muted">
                        Teras Mobil 99 adalah showroom mobil yang menyediakan
                        berbagai pilihan mobil bekas dan baru berkualitas
                        dengan harga terbaik.
                    </p>

                    <p class="text-muted mb-0">
                        Kami berkomitmen memberikan pelayanan terbaik kepada
                        pelanggan dengan proses transaksi yang aman, cepat,
                        dan terpercaya.
                    </p>

                </div>
            </div>

        </div>

        <div class="col-lg-5">

            <div class="card border-0 shadow-sm h-100">
                <div class="card-body p-4">

                    <h3 class="fw-bold mb-4">
                        Keunggulan Kami
                    </h3>

                    <ul class="list-group list-group-flush">

                        <li class="list-group-item">
                            ✅ Mobil Berkualitas
                        </li>

                        <li class="list-group-item">
                            ✅ Harga Kompetitif
                        </li>

                        <li class="list-group-item">
                            ✅ Proses Cepat
                        </li>

                        <li class="list-group-item">
                            ✅ Pelayanan Ramah
                        </li>

                        <li class="list-group-item">
                            ✅ Konsultasi WhatsApp
                        </li>

                    </ul>

                </div>
            </div>

        </div>

    </div>

    <div class="my-5"></div>

    <div class="row g-4 scroll-scale-up">

        <div class="col-lg-6">

            <div class="card border-0 shadow-sm">
                <div class="card-body p-4">

                    <h3 class="fw-bold mb-4">
                        Kontak Kami
                    </h3>

                    <p class="mb-3">
                        📍 Sidoarjo, Jawa Timur
                    </p>

                    <p class="mb-3">
                        📞 081234567890
                    </p>

                    <p class="mb-0">
                        ✉️ terasmobil99@gmail.com
                    </p>

                </div>
            </div>

        </div>

        <div class="col-lg-6">

            <div class="card border-0 shadow-sm bg-danger bg-opacity-10">
                <div class="card-body p-4">

                    <h3 class="fw-bold mb-3">
                        Hubungi Kami
                    </h3>

                    <p class="text-muted">
                        Tim kami siap membantu Anda dalam proses
                        pembelian maupun konsultasi kendaraan.
                    </p>

                    <a href="https://wa.me/6281234567890"
                       target="_blank"
                       class="btn btn-danger px-4">

                        Chat WhatsApp

                    </a>

                </div>
            </div>

        </div>

    </div>

</div>

@endsection