@extends('layouts.app')

@section('title', 'Data Mobil')

@section('content')

<div class="max-w-7xl mx-auto px-4 py-4">

    <div class="flex flex-col gap-4 md:flex-row md:items-center md:justify-between mb-8">
        <div>
            <h1 class="text-3xl font-extrabold text-slate-900">Data Mobil</h1>
            <p class="text-sm text-gray-500 mt-2">Kelola daftar mobil yang tersedia beserta detail, harga, dan aksi cepat.</p>
        </div>

        <a href="{{ route('mobil.create') }}"
           class="inline-flex items-center justify-center rounded-full bg-red-500 px-5 py-3 text-sm font-semibold text-white shadow-sm transition hover:bg-red-600">
           Tambah Mobil
        </a>
    </div>

    <div class="overflow-hidden rounded-[2rem] border border-gray-200 bg-white shadow-xl">
        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Foto</th>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Nama</th>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Merk</th>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Tahun</th>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Harga</th>
                        <th class="px-4 py-4 text-left text-xs font-semibold uppercase tracking-wide text-gray-500">Aksi</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach($mobil as $m)
                        <tr class="hover:bg-gray-50">
                            <td class="px-4 py-4 align-top whitespace-nowrap">
                                @php
                                    $gambar = $m->gambar1 ?? $m->gambar2 ?? $m->gambar3;
                                @endphp
                                <div class="h-20 w-28 overflow-hidden rounded-3xl bg-gray-100 border border-gray-200">
                                    @if($gambar)
                                        <img src="{{ asset('storage/'.$gambar) }}"
                                             alt="Foto {{ $m->nama }}"
                                             class="h-full w-full object-cover">
                                    @else
                                        <div class="flex h-full items-center justify-center text-xs text-gray-500">Tidak ada foto</div>
                                    @endif
                                </div>
                            </td>
                            <td class="px-4 py-4 align-top whitespace-nowrap text-sm font-medium text-slate-900">{{ $m->nama }}</td>
                            <td class="px-4 py-4 align-top whitespace-nowrap text-sm text-gray-600">{{ $m->merk }}</td>
                            <td class="px-4 py-4 align-top whitespace-nowrap text-sm text-gray-600">{{ $m->tahun }}</td>
                            <td class="px-4 py-4 align-top whitespace-nowrap text-sm text-slate-900 font-semibold">
                                Rp {{ number_format($m->harga,0,',','.') }}
                            </td>
                            <td class="px-4 py-4 align-top whitespace-nowrap text-sm text-gray-600 space-x-2">
                                <a href="{{ route('mobil.edit',$m->id) }}"
                                   class="inline-flex items-center rounded-full bg-amber-100 px-3 py-2 text-sm font-medium text-amber-700 hover:bg-amber-200 transition">
                                   Edit
                                </a>

                                <form action="{{ route('mobil.destroy', $m->id) }}" method="POST" class="inline-block" onsubmit="return confirm('Yakin ingin menghapus mobil ini?');">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="inline-flex items-center rounded-full bg-red-600 px-3 py-2 text-sm font-medium text-white hover:bg-red-700 transition">
                                        Hapus
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="border-t border-gray-200 bg-gray-50 px-4 py-4">
            {{ $mobil->links() }}
        </div>
    </div>

</div>

@endsection