<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Daftar - {{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        
        <!-- Font Awesome for Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    </head>
    <body class="font-sans text-gray-900 antialiased">
        <div class="min-h-screen flex flex-col items-center justify-center pt-6 sm:pt-0 bg-gradient-to-br from-pink-200 to-pink-100">
            <div class="w-full sm:max-w-sm px-6 py-8 bg-white border-2 border-gray-200 shadow-lg rounded-2xl">
                <!-- Logo -->
                <div class="flex justify-center mb-6">
                    <img src="{{ asset('src/logo.png') }}" alt="Logo" style="height: 64px; width: auto;">
                </div>

                <!-- Title -->
                <h1 class="text-2xl font-bold text-center text-gray-800 mb-2">
                    Daftar Akun
                </h1>
                <p class="text-center text-gray-600 mb-6 text-sm">
                    Buat akun baru
                </p>

                <!-- Register Form -->
                <form method="POST" action="{{ route('register') }}" class="space-y-4">
                    @csrf

                    <!-- Username -->
                    <div>
                        <input 
                            id="name" 
                            type="text" 
                            name="name" 
                            :value="old('name')" 
                            required 
                            autofocus 
                            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white text-gray-900 transition"
                            placeholder="Username"
                        />
                        <x-input-error :messages="$errors->get('name')" class="mt-2" />
                    </div>

                    <!-- Email -->
                    <div>
                        <input 
                            id="email" 
                            type="email" 
                            name="email" 
                            :value="old('email')" 
                            required 
                            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white text-gray-900 transition"
                            placeholder="Email"
                        />
                        <x-input-error :messages="$errors->get('email')" class="mt-2" />
                    </div>

                    <!-- Password -->
                    <div>
                        <input 
                            id="password" 
                            type="password" 
                            name="password" 
                            required 
                            autocomplete="new-password"
                            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white text-gray-900 transition"
                            placeholder="Password"
                        />
                        <x-input-error :messages="$errors->get('password')" class="mt-2" />
                    </div>

                    <!-- Confirm Password -->
                    <div>
                        <input 
                            id="password_confirmation" 
                            type="password" 
                            name="password_confirmation" 
                            required 
                            autocomplete="new-password"
                            class="w-full px-4 py-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-500 bg-white text-gray-900 transition"
                            placeholder="Konfirmasi Password"
                        />
                        <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
                    </div>

                    <!-- Register Button -->
                    <button 
                        type="submit"
                        class="w-full bg-green-500 hover:bg-green-600 text-white font-semibold py-3 px-4 rounded-lg transition duration-200 mt-6"
                    >
                        Daftar
                    </button>
                </form>

                <!-- Sign In Link -->
                <div class="text-center mt-4">
                    <span class="text-gray-700 text-sm">
                        Sudah punya akun? 
                        <a href="{{ route('login') }}" class="text-red-500 font-semibold hover:text-red-600">
                            Login
                        </a>
                    </span>
                </div>

                <!-- Divider -->
                <div class="flex items-center my-6">
                    <div class="flex-1 border-t border-gray-300"></div>
                    <span class="px-3 text-gray-600 text-sm">atau</span>
                    <div class="flex-1 border-t border-gray-300"></div>
                </div>

                <!-- Social Registration Buttons -->
                <div class="space-y-3">
                    <!-- Google Button -->
                    <button 
                        type="button"
                        class="w-full flex items-center justify-center gap-2 bg-white hover:bg-gray-100 border border-gray-300 text-gray-800 font-semibold py-3 px-4 rounded-lg transition duration-200"
                    >
                        <svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
                            <path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/>
                            <path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/>
                            <path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"/>
                            <path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/>
                        </svg>
                        <span>Daftar dengan Google</span>
                    </button>

                    <!-- Email Button -->
                    <button 
                        type="button"
                        class="w-full flex items-center justify-center gap-2 bg-white hover:bg-gray-100 border border-gray-300 text-gray-800 font-semibold py-3 px-4 rounded-lg transition duration-200"
                    >
                        <i class="fas fa-envelope text-gray-700"></i>
                        <span>Daftar dengan Email</span>
                    </button>
                </div>
            </div>
        </div>
    </body>
</html>
