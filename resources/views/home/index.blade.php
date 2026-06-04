@extends('layouts.app')

@section('title', 'Beranda')

@section('content')

<section class="scroll-scale-up hero-section py-5" style="background-image: url('{{ asset('src/mobil1.jpg') }}'); background-size: cover; background-position: center; min-height:460px;">
    <div style="background: rgba(0,0,0,0.45); min-height:460px;">
        <div class="container py-5">
            <div class="row align-items-center">
                <div class="col-lg-6 text-white">
                    <h1 class="display-5 fw-bold mb-3">Jual Beli Mobil Bekas Terpercaya</h1>
                    <p class="lead text-white-50 mb-4">Temukan mobil impian Anda dengan harga terbaik, proses cepat, dan layanan profesional dari Teras Mobil 99.</p>
                    <a href="{{ route('galeri') }}" class="btn btn-danger btn-lg">Lihat Mobil</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="scroll-scale-up py-5">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="fw-bold">Kenapa Memilih Teras Mobil 99?</h2>
            <p class="text-muted">Solusi terbaik untuk beli mobil bekas dengan jaminan kualitas, harga transparan, dan proses mudah.</p>
        </div>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 h-100">
                    <div class="card-body">
                        <h5 class="fw-bold">Mobil Berkualitas</h5>
                        <p class="text-muted">Semua mobil telah dicek secara detail untuk memastikan performa dan kenyamanan.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 h-100">
                    <div class="card-body">
                        <h5 class="fw-bold">Harga Terbaik</h5>
                        <p class="text-muted">Harga bersaing dengan transparansi penuh, tanpa biaya tersembunyi.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card border-0 shadow-sm rounded-4 h-100">
                    <div class="card-body">
                        <h5 class="fw-bold">Proses Mudah</h5>
                        <p class="text-muted">Beli mobil jadi lebih mudah! Proses cepat, praktis, dan bisa dilakukan dari mana saja.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="scroll-scale-up py-5 bg-white rounded-4 shadow-sm">
    <div class="container text-center">
        <h2 class="fw-bold mb-3">Tentang Kami</h2>
        <p class="text-muted mb-0">Teras Mobil 99 adalah showroom mobil terpercaya yang menghadirkan pilihan mobil bekas berkualitas dengan layanan terbaik untuk pelanggan.</p>
    </div>
</section>

@endsection