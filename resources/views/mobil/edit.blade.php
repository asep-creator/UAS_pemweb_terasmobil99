<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Edit Mobil - {{ config('app.name', 'Laravel') }}</title>

        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="bg-gradient-to-br from-red-100 via-white to-red-400">
        <div class="min-h-screen flex items-center justify-center p-4">
            <div class="bg-white shadow-xl rounded-2xl p-8 w-full max-w-lg">
                <div class="text-center mb-6">
                    <img src="{{ asset('src/logo.png') }}" class="w-20 mx-auto mb-2">
                    <h2 class="text-2xl font-bold">Edit Mobil</h2>
                    <p class="text-gray-500 text-sm">Perbarui informasi mobil dengan benar.</p>
                </div>

                @if ($errors->any())
                    <div class="mb-4 rounded-lg bg-red-50 border border-red-200 p-4 text-sm text-red-700">
                        <strong>Terjadi kesalahan:</strong>
                        <ul class="mt-2 list-disc list-inside">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form action="{{ route('mobil.update', $mobil->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('PATCH')

                    <div class="grid gap-4">
                        <input type="text" name="nama" value="{{ old('nama', $mobil->nama) }}" placeholder="Nama Mobil" required class="w-full p-3 border rounded-lg focus:outline-red-400">
                        <input type="text" name="merk" value="{{ old('merk', $mobil->merk) }}" placeholder="Merk" required class="w-full p-3 border rounded-lg focus:outline-red-400">
                        <input type="text" name="tipe" value="{{ old('tipe', $mobil->tipe) }}" placeholder="Tipe" required class="w-full p-3 border rounded-lg focus:outline-red-400">

                        <div class="grid md:grid-cols-2 gap-4">
                            <input type="number" name="tahun" value="{{ old('tahun', $mobil->tahun) }}" placeholder="Tahun" required class="w-full p-3 border rounded-lg focus:outline-red-400">
                            <input type="number" name="harga" value="{{ old('harga', $mobil->harga) }}" placeholder="Harga" required class="w-full p-3 border rounded-lg focus:outline-red-400">
                        </div>

                        <textarea name="deskripsi" placeholder="Deskripsi mobil" rows="4" class="w-full p-3 border rounded-lg focus:outline-red-400">{{ old('deskripsi', $mobil->deskripsi) }}</textarea>

                        <div class="grid gap-3 md:grid-cols-3">
                            <label class="block">
                                <span class="text-sm text-gray-600">Foto 1</span>
                                <input type="file" name="gambar1" class="w-full mt-2" accept="image/*">
                            </label>
                            <label class="block">
                                <span class="text-sm text-gray-600">Foto 2</span>
                                <input type="file" name="gambar2" class="w-full mt-2" accept="image/*">
                            </label>
                            <label class="block">
                                <span class="text-sm text-gray-600">Foto 3</span>
                                <input type="file" name="gambar3" class="w-full mt-2" accept="image/*">
                            </label>
                        </div>

                        <div class="flex flex-col sm:flex-row gap-3 mt-2">
                            <a href="{{ route('mobil.index') }}" class="text-center w-full sm:w-auto px-5 py-3 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition">
                                Batal
                            </a>
                            <button type="submit" class="w-full sm:w-auto px-5 py-3 bg-red-500 text-white rounded-lg font-semibold hover:bg-red-600 transition">
                                Update
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>