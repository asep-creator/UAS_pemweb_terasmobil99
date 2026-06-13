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

        <div class="grid lg:grid-cols-[1.2fr_0.8fr] gap-6 p-6 lg:p-8">

            <!-- FOTO -->
            <div x-data="{ active: 1, max: {{ $mobil->gambar3 ? 3 : ($mobil->gambar2 ? 2 : 1) }}, timer: null }"
                 x-init="timer = setInterval(() => active = active < max ? active + 1 : 1, 5000)">

                <!-- Foto Utama -->
                <div class="overflow-hidden rounded-[2rem] shadow-lg relative">

                    <img
                        x-cloak
                        x-show="active === 1"
                        src="{{ asset('storage/'.$mobil->gambar1) }}"
                        class="w-full aspect-[16/9] object-cover">

                    @if($mobil->gambar2)
                    <img
                        x-cloak
                        x-show="active === 2"
                        src="{{ asset('storage/'.$mobil->gambar2) }}"
                        class="w-full aspect-[16/9] object-cover">
                    @endif

                    @if($mobil->gambar3)
                    <img
                        x-cloak
                        x-show="active === 3"
                        src="{{ asset('storage/'.$mobil->gambar3) }}"
                        class="w-full aspect-[16/9] object-cover">
                    @endif

                    <!-- Navigation buttons -->
                    <button
                        type="button"
                        @click="active = active > 1 ? active - 1 : max"
                        class="absolute left-3 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white p-2 rounded-full shadow z-10 flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-700" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7" />
                        </svg>
                    </button>

                    <button
                        type="button"
                        @click="active = active < max ? active + 1 : 1"
                        class="absolute right-3 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white p-2 rounded-full shadow z-10 flex items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5 text-gray-700" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7" />
                        </svg>
                    </button>

                </div>

                <!-- Thumbnail -->
                <div class="flex justify-center gap-4 mt-5">

                    <img
                        src="{{ asset('storage/'.$mobil->gambar1) }}"
                        @click="active = 1"
                        :class="active === 1
                            ? 'border-red-500 ring-2 ring-red-200'
                            : 'border-gray-200'"
                        class="w-28 h-20 rounded-2xl object-cover border-2 cursor-pointer transition">

                    @if($mobil->gambar2)
                    <img
                        src="{{ asset('storage/'.$mobil->gambar2) }}"
                        @click="active = 2"
                        :class="active === 2
                            ? 'border-red-500 ring-2 ring-red-200'
                            : 'border-gray-200'"
                        class="w-28 h-20 rounded-2xl object-cover border-2 cursor-pointer transition">
                    @endif

                    @if($mobil->gambar3)
                    <img
                        src="{{ asset('storage/'.$mobil->gambar3) }}"
                        @click="active = 3"
                        :class="active === 3
                            ? 'border-red-500 ring-2 ring-red-200'
                            : 'border-gray-200'"
                        class="w-28 h-20 rounded-2xl object-cover border-2 cursor-pointer transition">
                    @endif

                </div>

            </div>

            <!-- DETAIL -->
            <div class="space-y-6">

                <!-- Nama & Info -->
                <div>
                    <h1 class="text-3xl md:text-4xl lg:text-5xl font-extrabold text-gray-900 leading-tight">{{ $mobil->nama }}</h1>
                    <p class="text-base md:text-lg text-gray-600 mt-2">
                        <span class="font-medium text-gray-700">{{ $mobil->merk }}</span>
                        <span class="mx-2">•</span>
                        <span class="italic text-gray-700">{{ $mobil->tipe }}</span>
                        @if($mobil->tahun)
                        <span class="mx-2">•</span>
                        <span class="text-gray-500">{{ $mobil->tahun }}</span>
                        @endif
                    </p>
                </div>

                <!-- Harga -->
                <div class="mb-6">

                    <p class="text-sm uppercase tracking-widest text-gray-500 mb-2">
                        Harga
                    </p>

                    <h2 class="text-4xl lg:text-5xl font-extrabold text-red-600">
                        Rp {{ number_format($mobil->harga,0,',','.') }}
                    </h2>

                </div>

                <!-- Deskripsi -->
                <div class="bg-gray-50 border border-gray-100 rounded-[1.8rem] p-6 mb-6">

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
                    class="inline-block bg-green-500 hover:bg-green-600 text-white text-center px-6 py-3 md:px-8 md:py-4 rounded-full font-semibold text-base md:text-lg no-underline transition">

                    Pesan Sekarang

                </a>

            </div>

        </div>

    </div>

</div>

@endsection