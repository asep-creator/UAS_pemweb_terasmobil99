@extends('layouts.app')

@section('content')

<h2 class="scroll-scale-up mb-4">Galeri Mobil</h2>

<div class="row">
<div class="row mb-4 align-items-center">

    <div class="col-md-6">

        <form method="GET">

            <div class="input-group">

                <input
                    type="text"
                    name="search"
                    class="form-control"
                    placeholder="Cari mobil..."
                    value="{{ request('search') }}">
                
                    <select name="tahun" class="form-select">

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
                <button class="btn btn-primary">
                    Cari
                </button>

            </div>

        </form>

    </div>

    @auth
        @if(auth()->user()->role === 'admin')
            <div class="col-md-6 text-md-end mt-3 mt-md-0 d-flex justify-content-end gap-2">
                <a href="{{ route('mobil.index') }}" class="btn btn-outline-secondary px-4">
                    Data Mobil
                </a>
                <a href="{{ route('mobil.create') }}" class="btn btn-success px-4">
                    + BARU
                </a>
            </div>
        @endif
    @endauth

</div>

@foreach($mobil as $m)

<div class="col-md-4 mb-4 scroll-scale-up">
    
    <div class="card h-100">

        @php
            $gambar = $m->gambar1 ?? $m->gambar2 ?? $m->gambar3;
        @endphp

        @if($gambar)
            <img src="{{ asset('storage/'.$gambar) }}"
                 style="height:220px;object-fit:cover">
        @endif

        <div class="card-body">

            <h5>{{ $m->nama }}</h5>

            <p>{{ $m->merk }}</p>

            <h4>
                Rp {{ number_format($m->harga,0,',','.') }}
            </h4>

            <div class="d-flex justify-content-between align-items-center mt-3">
                <a href="{{ route('detail',$m->id) }}" class="btn btn-primary btn-sm">
                    Detail
                </a>

                @auth
                    @if(auth()->user()->role === 'admin')
                        <div class="d-flex gap-2">
                            <a href="{{ route('mobil.edit', $m->id) }}" class="btn btn-dark btn-sm px-3">
                                Edit
                            </a>
                            <form action="{{ route('mobil.destroy', $m->id) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus mobil ini?');">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm px-3">
                                    Hapus
                                </button>
                            </form>
                        </div>
                    @endif
                @endauth
            </div>

        </div>

    </div>

</div>

@endforeach

</div>
<div class="mt-4">
    {{ $mobil->links() }}
</div>
@endsection