@extends('layouts.app')

@section('content')

<div class="scroll-scale-up">

```
<!-- Header -->
<div class="mb-8">

    <h1 class="text-4xl font-bold mb-2">
        Galeri Mobil
    </h1>

    <p class="text-gray-500">
        Temukan mobil impian Anda dengan mudah.
    </p>

</div>

<!-- Filter -->
<div class="bg-white rounded-[2rem] shadow-sm p-5 mb-8">

    <form method="GET">

        <div class="grid md:grid-cols-4 gap-3">

            <input
                type="text"
                name="search"
                value="{{ request('search') }}"
                placeholder="Cari mobil..."
                class="px-4 py-3 rounded-xl border border-gray-300 focus:outline-none focus:ring-2 focus:ring-red-500">

            <select
                name="tahun"
                class="px-4 py-3 rounded-xl border border-gray-300 focus:outline-none focus:ring-2 focus:ring-red-500">

                <option value="">
                    Semua Tahun
                </option>

                @for($i = date('Y'); $i >= 2000; $i--)
                    <option
                        value="{{ $i }}"
                        {{ request('tahun') == $i ? 'selected' : '' }}>
                        {{ $i }}
                    </option>
                @endfor

            </select>

            <button
                type="submit"
                class="bg-red-500 hover:bg-red-600 text-white rounded-xl px-4 py-3 font-medium">

                Cari

            </button>

            @auth
                @if(auth()->user()->role === 'admin')

                    <div class="flex gap-2">

                        <a
                            href="{{ route('mobil.index') }}"
                            class="bg-gray-700 hover:bg-gray-800 text-white px-4 py-3 rounded-xl no-underline text-center">

                            Data Mobil

                        </a>

                        <a
                            href="{{ route('mobil.create') }}"
                            class="bg-green-500 hover:bg-green-600 text-white px-4 py-3 rounded-xl no-underline text-center">

                            + Baru

                        </a>

                    </div>

                @endif
            @endauth

        </div>

    </form>

</div>

<!-- Card Mobil -->
<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">

    @foreach($mobil as $m)

    <div class="bg-white rounded-[2rem] overflow-hidden shadow-sm hover:shadow-xl transition duration-300">

        @if($m->gambar1)

            <img
                src="{{ asset('storage/'.$m->gambar1) }}"
                alt="{{ $m->nama }}"
                class="w-full h-56 object-cover">

        @endif

        <div class="p-5">

            <h3 class="text-xl font-bold mb-1">
                {{ $m->nama }}
            </h3>

            <p class="text-gray-500 mb-3">
                {{ $m->merk }}
            </p>

            <p class="text-2xl font-bold text-red-500 mb-4">
                Rp {{ number_format($m->harga,0,',','.') }}
            </p>

            <div class="flex justify-between items-center">

                <a
                    href="{{ route('detail',$m->id) }}"
                    class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-xl no-underline">

                    Detail

                </a>

                @auth
                    @if(auth()->user()->role === 'admin')

                        <div class="flex gap-2">

                            <a
                                href="{{ route('mobil.edit',$m->id) }}"
                                class="bg-gray-800 text-white px-3 py-2 rounded-xl no-underline">

                                Edit

                            </a>

                            <form
                                action="{{ route('mobil.destroy',$m->id) }}"
                                method="POST"
                                onsubmit="return confirm('Yakin ingin menghapus mobil ini?');">

                                @csrf
                                @method('DELETE')

                                <button
                                    type="submit"
                                    class="bg-red-600 text-white px-3 py-2 rounded-xl">

                                    Hapus

                                </button>

                            </form>

                        </div>

                    @endif
                @endauth

            </div>

        </div>

    </div>

    @endforeach

</div>

<!-- Pagination -->
<div class="mt-8">

    {{ $mobil->links() }}

</div>


</div>

@endsection
