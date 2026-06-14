@extends('layouts.app')

@section('title', 'Beranda')

@section('content')

<!-- HERO -->

<section class="relative min-h-[550px] rounded-[2rem] overflow-hidden scroll-scale-up">

<img
    src="{{ asset('src/mobil1.jpg') }}"
    alt="Mobil"
    class="absolute inset-0 w-full h-full object-cover">

<div class="absolute inset-0 bg-black/50"></div>

<div class="relative h-full flex items-end md:items-center">

    <div class="px-8 md:px-16 text-white pb-16 md:pb-0">

        <h1 class="text-4xl md:text-6xl font-bold leading-tight">

            JUAL BELI <br>

            <span class="text-red-500">
                MOBIL BEKAS
            </span>

            <br>

            TERPERCAYA

        </h1>

        <p class="mt-4 max-w-lg text-lg text-gray-200">
            Temukan mobil impian Anda dengan harga terbaik,
            proses cepat, dan layanan profesional dari
            Teras Mobil 99.
        </p>

        <a
            href="{{ route('galeri') }}"
            class="inline-block mt-6 bg-red-500 hover:bg-red-600 text-white px-6 py-3 rounded-full no-underline font-semibold transition">

            Lihat Mobil →

        </a>

    </div>

</div>


</section>

<!-- KEUNGGULAN -->

<section class="py-12 scroll-scale-up">


<div class="text-center mb-10">

    <h2 class="text-4xl font-bold">
        Kenapa Memilih Teras Mobil 99?
    </h2>

    <p class="text-gray-500 mt-3">
        Solusi terbaik untuk membeli mobil bekas berkualitas.
    </p>

</div>

<div class="grid md:grid-cols-3 gap-6">

    <div class="bg-red-100 rounded-[2rem] p-6 shadow-sm">

        <h3 class="font-bold text-xl mb-3">
            Mobil Berkualitas
        </h3>

        <p class="text-gray-600">
            Semua mobil telah dicek secara detail untuk memastikan performa dan kenyamanan.
        </p>

    </div>

    <div class="bg-red-100 rounded-[2rem] p-6 shadow-sm">

        <h3 class="font-bold text-xl mb-3">
            Harga Terbaik
        </h3>

        <p class="text-gray-600">
            Harga bersaing dengan transparansi penuh tanpa biaya tersembunyi.
        </p>

    </div>

    <div class="bg-red-100 rounded-[2rem] p-6 shadow-sm">

        <h3 class="font-bold text-xl mb-3">
            Proses Mudah
        </h3>

        <p class="text-gray-600">
            Pembelian cepat, praktis, dan dapat dilakukan dengan mudah.
        </p>

    </div>

</div>


</section>

<!-- TENTANG -->

<section class="bg-red-300 rounded-[2rem] p-10 text-center shadow-sm scroll-scale-up">

<h2 class="text-4xl font-bold mb-5">
    Tentang Kami
</h2>

<p class="max-w-3xl mx-auto text-black-800 leading-relaxed">

    Teras Mobil 99 merupakan showroom mobil bekas terpercaya yang berkomitmen
    menyediakan berbagai pilihan kendaraan berkualitas dengan harga yang
    transparan dan kompetitif. Setiap mobil yang tersedia telah melalui proses
    pengecekan untuk memastikan kondisi yang layak dan siap digunakan oleh
    pelanggan. Kepuasan pelanggan menjadi prioritas utama kami, sehingga Teras Mobil 99
    terus menghadirkan solusi jual beli mobil bekas yang aman, nyaman, dan
    terpercaya.

</p>


</section>

@endsection
