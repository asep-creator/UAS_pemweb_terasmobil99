@extends('layouts.app')

@section('title', $mobil->nama)

@section('content')

<div class="max-w-7xl mx-auto scroll-scale-up">


<!-- Back -->
<a
    href="{{ route('galeri') }}"
    class="inline-flex items-center gap-2 text-red-500 hover:text-red-600 font-medium no-underline mb-6">

    ← Kembali ke Galeri

</a>

<!-- Container -->
<div class="bg-white rounded-[2.5rem] shadow-xl overflow-hidden">

    <div class="grid lg:grid-cols-2 gap-8 p-6 lg:p-10">

        <!-- FOTO -->
        <div>

            <div
                id="carouselMobil"
                class="carousel slide"
                data-bs-ride="carousel">

                <div class="carousel-inner rounded-[2rem] overflow-hidden">

                    @php $active = true; @endphp

                    @if($mobil->gambar1)

                        <div class="carousel-item {{ $active ? 'active' : '' }}">

                            <img
                                src="{{ asset('storage/'.$mobil->gambar1) }}"
                                class="w-full h-[500px] object-cover">

                        </div>

                        @php $active = false; @endphp

                    @endif

                    @if($mobil->gambar2)

                        <div class="carousel-item {{ $active ? 'active' : '' }}">

                            <img
                                src="{{ asset('storage/'.$mobil->gambar2) }}"
                                class="w-full h-[500px] object-cover">

                        </div>

                        @php $active = false; @endphp

                    @endif

                    @if($mobil->gambar3)

                        <div class="carousel-item {{ $active ? 'active' : '' }}">

                            <img
                                src="{{ asset('storage/'.$mobil->gambar3) }}"
                                class="w-full h-[500px] object-cover">

                        </div>

                    @endif

                </div>

                <button
                    class="carousel-control-prev"
                    type="button"
                    data-bs-target="#carouselMobil"
                    data-bs-slide="prev">

                    <span class="carousel-control-prev-icon"></span>

                </button>

                <button
                    class="carousel-control-next"
                    type="button"
                    data-bs-target="#carouselMobil"
                    data-bs-slide="next">

                    <span class="carousel-control-next-icon"></span>

                </button>

            </div>

            <!-- Thumbnail -->
            <div class="flex justify-center gap-3 mt-4 flex-wrap">

                @if($mobil->gambar1)
                    <img
                        src="{{ asset('storage/'.$mobil->gambar1) }}"
                        class="w-24 h-16 rounded-xl object-cover border cursor-pointer hover:opacity-80 transition"
                        data-bs-target="#carouselMobil"
                        data-bs-slide-to="0">
                @endif

                @if($mobil->gambar2)
                    <img
                        src="{{ asset('storage/'.$mobil->gambar2) }}"
                        class="w-24 h-16 rounded-xl object-cover border cursor-pointer hover:opacity-80 transition"
                        data-bs-target="#carouselMobil"
                        data-bs-slide-to="1">
                @endif

                @if($mobil->gambar3)
                    <img
                        src="{{ asset('storage/'.$mobil->gambar3) }}"
                        class="w-24 h-16 rounded-xl object-cover border cursor-pointer hover:opacity-80 transition"
                        data-bs-target="#carouselMobil"
                        data-bs-slide-to="2">
                @endif

            </div>

        </div>

        <!-- DETAIL -->
        <div class="flex flex-col justify-center">

            <h1 class="text-4xl lg:text-5xl font-extrabold text-gray-900 mb-4">

                {{ $mobil->nama }}

            </h1>

            <!-- Badge -->
            <div class="flex flex-wrap gap-2 mb-5">

                <span class="bg-gray-100 text-gray-700 px-4 py-2 rounded-full text-sm">
                    {{ $mobil->merk }}
                </span>

                <span class="bg-red-100 text-red-600 px-4 py-2 rounded-full text-sm">
                    Tahun {{ $mobil->tahun ?? '-' }}
                </span>

                @if($mobil->tipe)

                    <span class="bg-blue-100 text-blue-600 px-4 py-2 rounded-full text-sm">
                        {{ $mobil->tipe }}
                    </span>

                @endif

            </div>

            <!-- Harga -->
            <div class="mb-6">

                <p class="text-sm uppercase tracking-wide text-gray-500 mb-1">
                    Harga
                </p>

                <h2 class="text-4xl font-extrabold text-red-600">

                    Rp {{ number_format($mobil->harga,0,',','.') }}

                </h2>

            </div>

            <!-- Deskripsi -->
            <div class="bg-gray-50 rounded-[1.5rem] p-5 mb-6">

                <h3 class="font-bold text-lg mb-3">
                    Deskripsi Mobil
                </h3>

                <p class="text-gray-600 leading-relaxed">

                    {{ $mobil->deskripsi ?: 'Belum ada deskripsi untuk kendaraan ini.' }}

                </p>

            </div>

            <!-- CTA -->
            <a
                href="{{ route('pesanan.create',$mobil->id) }}"
                class="inline-block bg-green-500 hover:bg-green-600 text-white text-center px-8 py-4 rounded-full font-semibold text-lg no-underline transition">

                Pesan Sekarang

            </a>

        </div>

    </div>

</div>

</div>

@endsection
