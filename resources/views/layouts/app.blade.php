<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <title>@yield('title', 'Teras Mobil 99')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        /* Hide elements marked with x-cloak until Alpine initializes */
        [x-cloak] { display: none !important; }
        .scroll-scale-up,
        .animate-card,
        .animate-carousel,
        .animate-table {
            transform: scale(0.96);
            opacity: 0;
            transition: transform 0.55s ease, opacity 0.55s ease;
            transform-origin: top center;
            will-change: transform, opacity;
        }

        .scroll-scale-up.visible,
        .animate-card.visible,
        .animate-carousel.visible,
        .animate-table.visible {
            transform: scale(1);
            opacity: 1;
        }

        /* Navbar open-state: soft blue frame when dropdown or mobile menu is open */
        nav details[open] > summary {
            background-color: #eef6ff; /* soft blue */
            border-radius: 0.5rem;
        }

        nav details[open] > div {
            background-color: #eef6ff; /* soft blue */
            border: 1px solid #cfe8ff;
            box-shadow: 0 8px 20px rgba(14,30,71,0.06);
        }

        /* Mobile menu visible state */
        nav #mobile-menu:not(.hidden) {
            background-color: #eef6ff; /* soft blue */
            border: 1px solid #cfe8ff;
            border-radius: 0.5rem;
            padding: 0.75rem;
        }
    </style>
</head>
<body class="bg-gray-100">

<nav class="bg-white shadow-sm border-b border-gray-200 sticky top-0 z-50">

<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">

    <div class="flex justify-between items-center h-16">

        <!-- Logo -->
        <a href="{{ url('/') }}" class="flex items-center gap-3 no-underline">

            <img
                src="{{ asset('src/logo.png') }}"
                alt="Logo"
                class="h-11 w-auto">

            <span class="text-xl font-bold text-gray-900">
                Teras Mobil 99
            </span>

        </a>

        <!-- Desktop Menu (moved to right side) -->

        <!-- Right Side (navigation links + user controls) -->
        <div class="hidden md:flex items-center gap-4">

            <div class="hidden md:flex items-center gap-3">

                <a href="{{ url('/') }}"
                   class="{{ (request()->is('/') || request()->routeIs('beranda')) ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} font-medium transition px-3 py-2 rounded-lg">
                    Beranda
                </a>

                <a href="{{ route('galeri') }}"
                   class="{{ request()->routeIs('galeri') ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} font-medium transition px-3 py-2 rounded-lg">
                    Galeri
                </a>

                <a href="{{ route('tentang') }}"
                   class="{{ request()->routeIs('tentang') ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} font-medium transition px-3 py-2 rounded-lg">
                    Tentang
                </a>

                @auth
                    @if(auth()->user()->role == 'admin')
                        <a href="{{ route('dashboard.admin') }}"
                           class="{{ request()->routeIs('dashboard.admin') ? 'bg-blue-50 text-blue-700' : 'text-yellow-600' }} font-semibold hover:text-yellow-500 px-3 py-2 rounded-lg transition">
                            Dashboard
                        </a>
                    @endif
                @endauth

            </div>

        <!-- Right Side -->
        
        <div class="hidden md:flex items-center gap-4">

            @guest

                <a href="{{ route('login') }}"
                   class="bg-red-500 hover:bg-red-600 text-white px-5 py-2 rounded-xl font-medium transition">
                    Masuk
                </a>

            @else

                <details class="relative">

                    <summary class="list-none cursor-pointer flex items-center gap-2">

                        @if(auth()->user()->role == 'admin')
                            <span class="bg-yellow-400 text-black text-xs px-2 py-1 rounded-full">
                                Admin
                            </span>
                        @endif

                        <img
                            src="{{ auth()->user()->profile_photo_url ?? asset('src/profile.jpg') }}"
                            alt="Avatar"
                            class="w-9 h-9 rounded-full object-cover border">

                        <span class="text-sm text-gray-700">
                            {{ Str::limit(auth()->user()->name, 15) }}
                        </span>

                    </summary>

                    <div class="absolute right-0 mt-3 w-44 bg-white rounded-2xl shadow-lg border overflow-hidden">

                        <form action="{{ route('logout') }}"
                              method="POST">
                            @csrf

                            <button
                                type="submit"
                                class="w-full text-left px-4 py-3 text-red-500 hover:bg-gray-100">
                                Keluar
                            </button>
                        </form>

                    </div>

                </details>

            @endguest

        </div>

        <!-- Mobile Button -->
        <button
            id="mobile-menu-button"
            class="md:hidden text-gray-700">

            ☰

        </button>

    </div>

    <!-- Mobile Menu -->
    <div
        id="mobile-menu"
        class="hidden md:hidden pb-4">

        <div class="flex flex-col gap-3">

            <a href="{{ url('/') }}"
               class="{{ (request()->is('/') || request()->routeIs('beranda')) ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} block px-4 py-2 rounded-lg transition">
                Beranda
            </a>

            <a href="{{ route('galeri') }}"
               class="{{ request()->routeIs('galeri') ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} block px-4 py-2 rounded-lg transition">
                Galeri
            </a>

            <a href="{{ route('tentang') }}"
               class="{{ request()->routeIs('tentang') ? 'bg-blue-50 text-blue-700' : 'text-gray-700 hover:text-red-500' }} block px-4 py-2 rounded-lg transition">
                Tentang
            </a>

            @auth
                @if(auth()->user()->role == 'admin')
                    <a href="{{ route('dashboard.admin') }}"
                       class="{{ request()->routeIs('dashboard.admin') ? 'bg-blue-50 text-blue-700' : 'text-yellow-600' }} block px-4 py-2 rounded-lg transition">
                        Dashboard
                    </a>
                @endif
            @endauth

            @guest

                <a href="{{ route('login') }}"
                   class="bg-red-500 text-white px-4 py-2 rounded-xl text-center">
                    Masuk
                </a>

            @else

                <a href="{{ route('profile.edit') }}">
                    Profil
                </a>

                <form action="{{ route('logout') }}"
                      method="POST">
                    @csrf

                    <button type="submit" class="text-red-500">
                        Keluar
                    </button>
                </form>

            @endguest

        </div>

    </div>

</div>

</nav>

<script>
document.addEventListener('DOMContentLoaded', function () {

    const button = document.getElementById('mobile-menu-button');
    const menu = document.getElementById('mobile-menu');

    if(button && menu){
        button.addEventListener('click', function () {
            menu.classList.toggle('hidden');
        });
    }

});
</script>


<main class="max-w-7xl mx-auto px-4 mt-12">
    @if(session('success'))
        <div class="bg-green-100 border border-green-300 text-green-700 px-4 py-3 rounded-xl mb-4">
            {{ session('success') }}
        </div>
    @endif

    @yield('content')
</main>

<footer class="bg-slate-900 text-white mt-16">

<div class="max-w-7xl mx-auto px-6 py-12">

    <div class="grid md:grid-cols-3 gap-8">

        <div>
            <h3 class="text-xl font-bold mb-3">
                Teras Mobil 99
            </h3>

            <p class="text-gray-300 leading-relaxed">
                Platform jual beli mobil terpercaya dengan pilihan mobil berkualitas,
                harga terbaik, dan proses pembelian yang mudah.
            </p>
        </div>

        <div>
            <h3 class="text-xl font-bold mb-3">
                Navigasi
            </h3>

            <div class="flex flex-col gap-2">

                <a href="{{ url('/') }}"
                   class="text-gray-300 hover:text-white no-underline">
                    Beranda
                </a>

                <a href="{{ route('galeri') }}"
                   class="text-gray-300 hover:text-white no-underline">
                    Galeri
                </a>

                <a href="{{ route('tentang') }}"
                   class="text-gray-300 hover:text-white no-underline">
                    Tentang
                </a>

            </div>
        </div>

        <div>
            <h3 class="text-xl font-bold mb-3">
                Kontak Kami
            </h3>

            <div class="space-y-2 text-gray-300">

                <p>📍 Jl. Raya Mobil No.99, Surabaya</p>
                <p>📞 0812-3456-7890</p>
                <p>✉️ info@terasmobil99.com</p>

            </div>
        </div>

    </div>

    <div class="border-t border-gray-700 mt-8 pt-6 text-center text-sm text-gray-400">

        © 2026 Teras Mobil 99. All Rights Reserved.

    </div>

</div>

</footer>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const elements = document.querySelectorAll('.scroll-scale-up, .animate-card, .animate-carousel, .animate-table');
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