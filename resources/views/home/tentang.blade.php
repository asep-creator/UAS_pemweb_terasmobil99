@extends('layouts.app')

@section('content')

<div class="text-center mb-5 scroll-scale-up">

    <h1>Tentang Kami</h1>

    <p class="lead">
        Selamat datang di Teras Mobil 99
    </p>

</div>

<div class="row scroll-scale-up">

    <div class="col-md-6">

        <h3>Profil Perusahaan</h3>

        <p>
            Teras Mobil 99 adalah showroom mobil
            yang menyediakan berbagai pilihan
            mobil bekas dan baru berkualitas
            dengan harga terbaik.
        </p>

        <p>
            Kami berkomitmen memberikan pelayanan
            terbaik kepada pelanggan dengan proses
            transaksi yang aman, cepat, dan terpercaya.
        </p>

    </div>

    <div class="col-md-6">

        <div class="card shadow">

            <div class="card-body">

                <h4>Keunggulan Kami</h4>

                <ul>
                    <li>Mobil Berkualitas</li>
                    <li>Harga Kompetitif</li>
                    <li>Proses Cepat</li>
                    <li>Pelayanan Ramah</li>
                    <li>Bisa Konsultasi via WhatsApp</li>
                </ul>

            </div>

        </div>

    </div>

</div>

<hr class="my-5">

<div class="row scroll-scale-up">

    <div class="col-md-6">

        <h3>Kontak</h3>

        <p>
            📍 Sidoarjo, Jawa Timur
        </p>

        <p>
            📞 081234567890
        </p>

        <p>
            ✉️ terasmobil99@gmail.com
        </p>

    </div>

    <div class="col-md-6">

        <h3>Hubungi Kami</h3>

        <a href="https://wa.me/6281234567890"
           target="_blank"
           class="btn btn-success">

            Chat WhatsApp

        </a>

    </div>

</div>

@endsection