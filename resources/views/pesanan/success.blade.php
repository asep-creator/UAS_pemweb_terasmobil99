<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pesanan Berhasil</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #fef2f2 0%, #fca5a5 50%, #f87171 100%);
        }
        
        .notification {
            animation: slideDown 0.5s ease-out;
        }
        
        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="notification bg-green-100 border-4 border-green-500 text-green-700 px-8 py-6 rounded-2xl shadow-2xl text-center max-w-md">
        <svg class="mx-auto mb-4 w-16 h-16 text-green-500" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
        </svg>
        <h2 class="text-2xl font-bold mb-2">Pesanan Anda Berhasil Diajukan</h2>
        <p class="text-lg">Anda akan dialihkan ke galeri mobil dalam beberapa detik...</p>
    </div>

    <script>
        setTimeout(function() {
            window.location.href = "{{ route('galeri') }}";
        }, 3000);
    </script>
</body>
</html>
