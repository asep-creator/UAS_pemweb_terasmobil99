@extends('layouts.app')

@section('content')

<div class="d-flex justify-content-between mb-3">

    <h2>Data Mobil</h2>

    <a href="{{ route('mobil.create') }}"
       class="btn btn-primary">
       Tambah Mobil
    </a>

</div>

<table class="table table-bordered scroll-scale-up">

    <thead>

        <tr>
            <th>Foto</th>
            <th>Nama</th>
            <th>Merk</th>
            <th>Tahun</th>
            <th>Harga</th>
            <th>Aksi</th>
        </tr>

    </thead>

    <tbody>

    @foreach($mobil as $m)

    <tr class="scroll-scale-up">

        <td width="150">

            @if($m->gambar1)
                <img src="{{ asset('storage/'.$m->gambar1) }}"
                     width="120">
            @endif

        </td>

        <td>{{ $m->nama }}</td>
        <td>{{ $m->merk }}</td>
        <td>{{ $m->tahun }}</td>

        <td>
            Rp {{ number_format($m->harga,0,',','.') }}
        </td>

        <td>

            <a href="{{ route('mobil.show',$m->id) }}"
               class="btn btn-info btn-sm">
               Detail
            </a>

            <a href="{{ route('mobil.edit',$m->id) }}"
               class="btn btn-warning btn-sm">
               Edit
            </a>
            <a href="{{ route('pesanan.create',$m->id) }}"
                class="btn btn-success btn-sm">
                 Beli
            </a>
        </td>

    </tr>

    @endforeach

    </tbody>

</table>
<div class="mt-3">
    {{ $mobil->links() }}
</div>
@endsection