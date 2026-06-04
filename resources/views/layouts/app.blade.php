<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>@yield('title', 'Teras Mobil 99')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .scroll-scale-up,
        .card,
        .carousel-item,
        .table {
            transform: scale(0.96);
            opacity: 0;
            transition: transform 0.55s ease, opacity 0.55s ease;
            transform-origin: top center;
            will-change: transform, opacity;
        }

        .scroll-scale-up.visible,
        .card.visible,
        .carousel-item.visible,
        .table.visible {
            transform: scale(1);
            opacity: 1;
        }
    </style>
</head>
<body class="bg-light">

<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand fw-bold d-flex align-items-center" href="{{ url('/') }}">
            <img src="{{ asset('src/logo.png') }}" alt="Logo" style="height:44px; margin-right:10px;">
            <span>Teras Mobil 99</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto align-items-lg-center">
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="{{ url('/') }}">Beranda</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="{{ route('galeri') }}">Galeri</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link fw-semibold" href="{{ route('tentang') }}">Tentang</a>
                </li>
                @auth
                    @if(auth()->user()->role == 'admin')
                        <li class="nav-item">
                            <a class="nav-link text-warning" href="{{ route('dashboard.admin') }}">Admin</a>
                        </li>
                    @endif
                @endauth
                @guest
                    <li class="nav-item ms-lg-3">
                        <a class="btn btn-primary" href="{{ route('login') }}">Masuk</a>
                    </li>
                @else
                    <li class="nav-item dropdown ms-lg-3">
                        <a class="nav-link dropdown-toggle d-flex flex-row align-items-center gap-2" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="padding: 0.25rem 0;">
                            @if(auth()->user()->role == 'admin')
                                <span class="badge bg-warning text-dark small">Admin</span>
                            @endif
                            <img src="{{ auth()->user()->profile_photo_url ?? asset('src/profile.jpg') }}" alt="Avatar" class="rounded-circle" style="width:32px;height:32px;object-fit:cover;">
                            <span class="d-none d-lg-inline small">{{ Str::limit(auth()->user()->name, 15) }}</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end text-center p-2" aria-labelledby="profileDropdown">
                            <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Profil</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li>
                                <form action="{{ route('logout') }}" method="POST" class="px-3">
                                    @csrf
                                    <button type="submit" class="btn btn-link text-danger p-0">Keluar</button>
                                </form>
                            </li>
                        </ul>
                    </li>
                @endguest
                <li class="nav-item ms-3 d-flex align-items-center">
                    @yield('top-right-logo')
                </li>
            </ul>
        </div>
    </div>
</nav>

<main class="container mt-5">
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @yield('content')
</main>

<footer class="bg-dark text-light mt-5 py-5">
    <div class="container">
        <div class="row gy-4">
            <div class="col-md-4">
                <h5 class="fw-bold">Teras Mobil 99</h5>
                <p class="mb-0 text-white">Platform jual beli mobil terpercaya dengan pilihan mobil berkualitas, harga terbaik, dan proses pembelian yang mudah.</p>
            </div>
            <div class="col-md-4">
                <h5 class="fw-bold">Navigasi</h5>
                <ul class="list-unstyled">
                    <li><a href="{{ url('/') }}" class="text-white text-decoration-none">Beranda</a></li>
                    <li><a href="{{ route('galeri') }}" class="text-white text-decoration-none">Galeri</a></li>
                    <li><a href="{{ route('tentang') }}" class="text-white text-decoration-none">Tentang</a></li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5 class="fw-bold">Kontak Kami</h5>
                <p class="mb-1 text-white">📍 Jl. Raya Mobil No.99, Surabaya</p>
                <p class="mb-1 text-white">📞 0812-3456-7890</p>
                <p class="mb-0 text-white">✉️ info@terasmobil99.com</p>
            </div>
        </div>
        <div class="text-center text-white small mt-4">&copy; 2026 Teras Mobil 99. All Rights Reserved.</div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const elements = document.querySelectorAll('.scroll-scale-up, .card, .carousel-item, .table');
        if ('IntersectionObserver' in window) {
            const observer = new IntersectionObserver((entries, self) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('visible');
                        self.unobserve(entry.target);
                    }
                });
            }, {
                threshold: 0.15,
            });

            elements.forEach(el => observer.observe(el));
        } else {
            elements.forEach(el => el.classList.add('visible'));
        }
    });
</script>
</body>
</html>