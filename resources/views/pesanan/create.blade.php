<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Pembelian Mobil - {{ config('app.name', 'Laravel') }}</title>

        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body class="bg-gradient-to-br from-red-100 via-white to-red-400">
        <div class="min-h-screen flex items-center justify-center p-4">
            <div class="bg-white shadow-xl rounded-2xl p-8 w-full max-w-md">
                <div class="text-center mb-6">
                    <h2 class="text-2xl font-bold">Pembelian Mobil</h2>
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

                <form action="{{ route('pesanan.store') }}" method="POST">
                    @csrf

                    <input type="hidden" name="mobil_id" value="{{ $mobil->id }}">

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Nama Lengkap</label>
                        <input type="text" name="nama_pembeli" value="{{ old('nama_pembeli') }}" required class="w-full p-3 border rounded-lg">
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">No WhatsApp</label>
                        <div class="flex items-center">
                            <span class="px-3 py-2 border border-r-0 rounded-l-lg bg-gray-100 text-sm">+62</span>
                            <input type="text" name="telepon" value="{{ old('telepon') }}" required class="flex-1 p-3 border rounded-r-lg">
                        </div>
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Alamat</label>
                        <textarea name="alamat" rows="3" class="w-full p-3 border rounded-lg">{{ old('alamat') }}</textarea>
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                        <input type="email" name="email" readonly required class="w-full p-3 border rounded-lg bg-gray-100" value="{{ old('email', auth()->user()->email) }}">
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Mobil</label>
                        <input type="text" readonly class="w-full p-3 border rounded-lg bg-gray-100" value="{{ $mobil->nama }}">
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Tipe</label>
                        <input type="text" readonly class="w-full p-3 border rounded-lg bg-gray-100" value="{{ $mobil->tipe ?? $mobil->merk }}">
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Tahun</label>
                        <input type="text" readonly class="w-full p-3 border rounded-lg bg-gray-100" value="{{ $mobil->tahun }}">
                    </div>

                    <div class="mb-3">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Jenis Pembelian</label>
                        <div class="flex gap-3 items-center mt-2">
                            <label class="flex items-center gap-2">
                                <input type="radio" name="jenis" id="cashRadio" value="cash" checked class="h-4 w-4">
                                <span class="text-sm">Cash</span>
                            </label>
                            <label class="flex items-center gap-2">
                                <input type="radio" name="jenis" id="kreditRadio" value="kredit" class="h-4 w-4">
                                <span class="text-sm">Kredit</span>
                            </label>
                        </div>
                        <div id="creditNote" class="mt-2 text-red-600 text-sm" style="display:none;">
                            *Wajib menyerahkan KTP & KK saat pengambilan
                        </div>
                    </div>

                    <div class="mt-4 flex flex-col sm:flex-row gap-3">
                        <a href="{{ route('detail', $mobil->id) }}" class="text-center w-full sm:w-auto px-5 py-3 border border-gray-300 rounded-lg text-gray-700 hover:bg-gray-100 transition">
                            Batal
                        </a>
                        <button type="submit" class="w-full sm:w-auto px-5 py-3 bg-red-500 text-white rounded-lg font-semibold hover:bg-red-600 transition">Ajukan Pembelian</button>
                    </div>
                </form>
            </div>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const kredit = document.getElementById('kreditRadio');
                const cash = document.getElementById('cashRadio');
                const note = document.getElementById('creditNote');

                function toggleNote() {
                    if (kredit.checked) {
                        note.style.display = 'block';
                    } else {
                        note.style.display = 'none';
                    }
                }

                kredit.addEventListener('change', toggleNote);
                cash.addEventListener('change', toggleNote);
                toggleNote();
            });
        </script>
    </body>
</html>