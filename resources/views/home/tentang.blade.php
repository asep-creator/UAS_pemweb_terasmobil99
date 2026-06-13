@extends('layouts.app')

@section('content')

<div class="max-w-6xl mx-auto px-4 py-6">

```
<!-- HERO -->
<section class="text-center mb-10 scroll-scale-up">

    <p class="text-red-500 fw-semibold mb-2">
        Tentang Kami
    </p>

    <h1 class="text-5xl md:text-7xl font-extrabold text-dark">
        Showroom
        <span class="text-danger">
            Teras Mobil 99
        </span>
    </h1>

    <p class="text-muted mt-4 mx-auto text-lg" style="max-width: 760px;">
        Teras Mobil 99 adalah showroom mobil terpercaya yang menyediakan
        berbagai pilihan kendaraan berkualitas dengan harga terbaik,
        proses pembelian yang mudah, aman, dan pelayanan profesional
        untuk setiap pelanggan.
    </p>

</section>

<!-- STATISTIK -->
<section class="grid md:grid-cols-3 gap-4 mb-10 scroll-scale-up">

    <div class="bg-white rounded-[2rem] shadow-lg p-6 text-center">
        <h2 class="text-danger fw-bold text-5xl">500+</h2>
        <p class="text-muted mt-2 mb-0">Pelanggan Puas</p>
    </div>

    <div class="bg-white rounded-[2rem] shadow-lg p-6 text-center">
        <h2 class="text-danger fw-bold text-5xl">50+</h2>
        <p class="text-muted mt-2 mb-0">Mobil Tersedia</p>
    </div>

    <div class="bg-white rounded-[2rem] shadow-lg p-6 text-center">
        <h2 class="text-danger fw-bold text-5xl">10+</h2>
        <p class="text-muted mt-2 mb-0">Tahun Pengalaman</p>
    </div>

</section>

<!-- FOTO -->
<section class="mb-10 scroll-scale-up">

    <img
        src="{{ asset('src/car photo.jpg') }}"
        alt="Showroom Teras Mobil 99"
        class="w-full h-[220px] md:h-[320px] object-cover rounded-[2rem] shadow-xl">

</section>

<!-- VISI MISI LOKASI -->
<section class="grid md:grid-cols-3 gap-4 mb-10 scroll-scale-up">

    <div class="bg-white rounded-[2rem] shadow-lg p-6">
        <div class="text-4xl mb-3">🎯</div>

        <h3 class="fw-bold mb-3 text-xl">
            Visi
        </h3>

        <p class="text-muted mb-0">
            Menjadi showroom mobil terpercaya pilihan masyarakat Indonesia.
        </p>
    </div>

    <div class="bg-white rounded-[2rem] shadow-lg p-6">
        <div class="text-4xl mb-3">❤️</div>

        <h3 class="fw-bold mb-3 text-xl">
            Misi
        </h3>

        <p class="text-muted mb-0">
            Menyediakan kendaraan berkualitas, harga transparan,
            serta pelayanan terbaik untuk setiap pelanggan.
        </p>
    </div>

    <div class="bg-white rounded-[2rem] shadow-lg p-6">
        <div class="text-4xl mb-3">📍</div>

        <h3 class="fw-bold mb-3 text-xl">
            Lokasi
        </h3>

        <p class="text-muted mb-0">
            sioarjo, Jawa Timur.
        </p>
    </div>

</section>

<!-- KEUNGGULAN -->
<section class="bg-slate-900 text-white rounded-[2.5rem] p-8 md:p-10 mb-10 scroll-scale-up">

    <div class="grid md:grid-cols-3 gap-6">

        <div>
            <p class="text-red-400 fw-semibold mb-2">
                Kenapa Memilih Kami
            </p>

            <h2 class="text-3xl fw-bold leading-snug">
                Pengalaman membeli mobil jadi lebih mudah dan nyaman
            </h2>
        </div>

        <div class="space-y-2 text-gray-200">
            <p>✔ Mobil telah melalui pengecekan kualitas</p>
            <p>✔ Harga transparan tanpa biaya tersembunyi</p>
            <p>✔ Proses pembelian cepat dan aman</p>
        </div>

        <div class="space-y-2 text-gray-200">
            <p>✔ Banyak pilihan merek dan tipe mobil</p>
            <p>✔ Pelayanan ramah dan profesional</p>
            <p>✔ Konsultasi gratis sesuai kebutuhan Anda</p>
        </div>

    </div>

</section>

<!-- CTA -->
<section class="bg-red-50 rounded-[2rem] p-8 text-center shadow-sm scroll-scale-up">

    <h2 class="text-3xl fw-bold mb-3">
        Siap Menemukan Mobil Impian Anda?
    </h2>

    <p class="text-muted mb-4">
        Jelajahi berbagai pilihan mobil berkualitas yang tersedia
        di Teras Mobil 99 dan temukan kendaraan yang sesuai dengan kebutuhan Anda.
    </p>

    <div class="flex flex-wrap justify-center gap-3">

        <a href="{{ route('galeri') }}"
           class="btn btn-dark px-4">
            Lihat Galeri
        </a>

        <a href="https://wa.me/6281234567890"
           target="_blank"
           class="btn btn-danger px-4">
            Chat WhatsApp
        </a>

    </div>

</section>
```

</div>

@endsection