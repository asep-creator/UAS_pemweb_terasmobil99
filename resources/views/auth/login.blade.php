<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Masuk - {{ config('app.name', 'Laravel') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
        
        <!-- Font Awesome for Icons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    </head>
    <body class="bg-gradient-to-br from-red-100 via-white to-red-400">
    
    <div class="min-h-screen flex items-center justify-center p-4">

        <div class="bg-white shadow-xl rounded-2xl p-8 w-full max-w-sm">

            <!-- Logo -->
            <div class="text-center mb-6">
                <img src="{{ asset('src/logo.png') }}"
                    class="w-20 mx-auto mb-2">

                <h2 class="text-2xl font-bold">
                    Masuk
                </h2>

                <p class="text-gray-500 text-sm">
                    Selamat datang kembali
                </p>
            </div>

            <!-- Session Status -->
            <x-auth-session-status
                class="mb-4"
                :status="session('status')" />

            <form method="POST" action="{{ route('login') }}">
                @csrf

                <!-- Email -->
                <input
                    type="email"
                    name="email"
                    value="{{ old('email', Cookie::get('remember_email')) }}"
                    placeholder="Email"
                    required
                    autofocus
                    class="w-full p-3 border rounded-lg mb-3 focus:outline-red-400">

                <x-input-error :messages="$errors->get('email')" class="mb-2" />

                <!-- Password -->
                <input
                    type="password"
                    name="password"
                    placeholder="Password"
                    required
                    class="w-full p-3 border rounded-lg mb-2 focus:outline-red-400">

                <x-input-error :messages="$errors->get('password')" class="mb-2" />

                <!-- Remember -->
                <div class="flex items-center mb-4">

                    <input
                        id="remember_me"
                        type="checkbox"
                        value="1"
                        {{ old('remember') ? 'checked' : '' }}
                        name="remember"
                        class="mr-2">

                    <label
                        for="remember_me"
                        class="text-sm text-gray-600">

                        Remember Me

                    </label>

                </div>

                <button
                    type="submit"
                    class="w-full bg-red-500 text-white py-3 rounded-lg font-semibold hover:bg-red-600 transition">

                    Masuk

                </button>

            </form>

            <!-- Register -->
            <p class="text-center text-sm mt-4">

                Belum punya akun?

                <a
                    href="{{ route('register') }}"
                    class="text-red-500 font-semibold hover:underline">

                    Daftar

                </a>

            </p>

            <!-- Divider -->
            <div class="flex items-center my-5">

                <hr class="flex-grow border-gray-300">

                <span class="mx-2 text-gray-400 text-sm">
                    atau
                </span>

                <hr class="flex-grow border-gray-300">

            </div>

            <!-- Google -->
            <button
                type="button"
                class="w-full border border-gray-300 py-3 rounded-lg flex items-center justify-center gap-3 hover:shadow-md transition mb-2 bg-white">

                <img
                    src="https://www.svgrepo.com/show/475656/google-color.svg"
                    class="w-5 h-5">

                <span class="font-medium text-gray-700">
                    Lanjutkan dengan Google
                </span>

            </button>

            <!-- Email -->
            <button
                type="button"
                class="w-full border py-3 rounded-lg flex items-center justify-center gap-3 hover:bg-gray-50 transition">

                <i class="fa-solid fa-envelope"></i>

                Login dengan Email

            </button>

        </div>

    </div>

</body>
</html>
