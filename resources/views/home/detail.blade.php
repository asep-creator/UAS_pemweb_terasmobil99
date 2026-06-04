@extends('layouts.app')

@section('content')

<div class="scroll-scale-up">

    <a href="{{ route('galeri') }}" class="text-decoration-none mb-3 d-inline-block">&larr; Kembali ke Galeri</a>

    <div class="card shadow-sm p-4">
        <div class="row g-4">

            <div class="col-lg-7">
                <div id="carouselMobil" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner rounded">
                        @php $active = true; @endphp
                        @if($mobil->gambar1)
                            <div class="carousel-item {{ $active ? 'active' : '' }}">
                                <img src="{{ asset('storage/'.$mobil->gambar1) }}" class="d-block w-100" style="height:420px;object-fit:cover;">
                            </div>
                            @php $active = false; @endphp
                        @endif

                        @if($mobil->gambar2)
                            <div class="carousel-item {{ $active ? 'active' : '' }}">
                                <img src="{{ asset('storage/'.$mobil->gambar2) }}" class="d-block w-100" style="height:420px;object-fit:cover;">
                            </div>
                            @php $active = false; @endphp
                        @endif

                        @if($mobil->gambar3)
                            <div class="carousel-item {{ $active ? 'active' : '' }}">
                                <img src="{{ asset('storage/'.$mobil->gambar3) }}" class="d-block w-100" style="height:420px;object-fit:cover;">
                            </div>
                        @endif
                    </div>

                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselMobil" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselMobil" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>

                </div>

                <div class="d-flex gap-2 justify-content-center mt-3">
                    @if($mobil->gambar1)
                        <img src="{{ asset('storage/'.$mobil->gambar1) }}" class="thumbnail-img border rounded" style="width:70px;height:50px;object-fit:cover;cursor:pointer;" data-bs-target="#carouselMobil" data-bs-slide-to="0">
                    @endif
                    @if($mobil->gambar2)
                        <img src="{{ asset('storage/'.$mobil->gambar2) }}" class="thumbnail-img border rounded" style="width:70px;height:50px;object-fit:cover;cursor:pointer;" data-bs-target="#carouselMobil" data-bs-slide-to="1">
                    @endif
                    @if($mobil->gambar3)
                        <img src="{{ asset('storage/'.$mobil->gambar3) }}" class="thumbnail-img border rounded" style="width:70px;height:50px;object-fit:cover;cursor:pointer;" data-bs-target="#carouselMobil" data-bs-slide-to="2">
                    @endif
                </div>
            </div>

            <div class="col-lg-5">
                <h3 class="mb-1">{{ $mobil->nama }}</h3>
                <div class="text-muted mb-3">Tipe: {{ $mobil->tipe ?? $mobil->merk }}</div>
                <div class="text-muted mb-3">Tahun: {{ $mobil->tahun ?? '-' }}</div>

                <h4 class="text-success fw-bold">Rp {{ number_format($mobil->harga,0,',','.') }}</h4>

                <p class="mt-3">{{ $mobil->deskripsi }}</p>

                <a href="{{ route('pesanan.create',$mobil->id) }}" class="btn btn-success btn-lg">Pesan Sekarang</a>
            </div>

        </div>
    </div>

</div>

@endsection