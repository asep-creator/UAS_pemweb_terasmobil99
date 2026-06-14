@extends('layouts.app')

@section('content')

<h2 class="scroll-scale-up mb-4 text-2xl font-semibold">Dashboard Admin</h2>

<div class="grid gap-4 mb-4 md:grid-cols-3">
    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Total Mobil</h6>
                <h2 class="text-2xl font-bold mb-0">{{ $jumlahMobil }}</h2>
            </div>
        </div>
    </div>

    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Total Transaksi</h6>
                <h2 class="text-2xl font-bold mb-0">{{ $jumlahPesanan }}</h2>
            </div>
        </div>
    </div>

    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Total Penjualan</h6>
                <h2 class="text-2xl font-semibold text-green-600 mb-0">Rp {{ number_format($totalPenjualan,0,',','.') }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="grid gap-4 mb-4 md:grid-cols-3">
    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Jumlah Mobil per Merk</h6>
                <div class="relative h-64 w-full">
                    <canvas id="merkChart" class="w-full h-full"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Total Transaksi Per Bulan</h6>
                <div class="relative h-64 w-full">
                    <canvas id="transaksiChart" class="w-full h-full"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="bg-white shadow-sm rounded-lg">
            <div class="p-4">
                <h6 class="uppercase text-gray-500 text-sm">Total Penghasilan Per Bulan</h6>
                <div class="relative h-64 w-full">
                    <canvas id="revenueChart" class="w-full h-full"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="bg-white shadow-sm rounded-lg">
    <div class="p-4">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center mb-4">
            <div>
                <h5 class="mb-1 text-lg font-medium">Data Pesanan</h5>
                <p class="text-gray-500 mb-0">Ringkasan pesanan terbaru dan statusnya.</p>
            </div>
            <div class="mt-3 md:mt-0">
                <form class="flex" method="GET" action="{{ route('admin.riwayat.export') }}" target="_blank">
                    <input type="month" name="month" class="border rounded px-2 py-1 text-sm mr-2" />
                    <button type="submit" class="bg-blue-600 hover:bg-blue-700 text-white text-sm px-3 py-1 rounded">Unduh Excel</button>
                </form>
            </div>
        </div>

        <div class="overflow-x-auto">
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Nama</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Mobil</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Tahun</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Pembelian</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Status</th>
                        <th class="px-4 py-2 text-left text-sm font-medium text-gray-500">Aksi</th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-100">
                    @foreach($pesanan as $p)
                        <tr>
                            <td class="px-4 py-3">{{ $p->nama_pembeli }}</td>
                            <td class="px-4 py-3">{{ $p->mobil->nama }}</td>
                            <td class="px-4 py-3">{{ $p->mobil->tahun ?? '-' }}</td>
                            <td class="px-4 py-3">{{ ucfirst($p->jenis ?? 'cash') }}</td>
                            <td class="px-4 py-3">
                                @if($p->status == 'Pending')
                                    <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-yellow-200 text-yellow-800">Pending</span>
                                @elseif($p->status == 'Diproses')
                                    <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-blue-100 text-blue-800">Diproses</span>
                                @elseif($p->status == 'Selesai')
                                    <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-green-100 text-green-800">Selesai</span>
                                @else
                                    <span class="inline-flex items-center px-2 py-1 rounded-full text-xs font-semibold bg-red-100 text-red-800">Dibatalkan</span>
                                @endif
                            </td>
                            <td class="px-4 py-3">
                                @if($p->status != 'Selesai')
                                    <form action="{{ route('pesanan.status', $p->id) }}" method="POST" class="inline">
                                        @csrf
                                        @method('PATCH')
                                        <input type="hidden" name="status" value="Selesai">
                                        <input type="hidden" name="current_status" value="{{ $p->status }}">
                                        <button type="submit" class="text-green-600 border border-green-600 hover:bg-green-50 px-2 py-1 rounded text-sm">✓</button>
                                    </form>
                                @else
                                    <span class="text-green-600 font-semibold">✓</span>
                                @endif
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const merkLabels = @json($merkCounts->keys());
        const merkData = @json($merkCounts->values());
        const monthLabels = @json($monthLabels);
        const transaksiData = @json($transaksiPerBulan);
        const revenueData = @json($penghasilanPerBulan);

        const merkChartEl = document.getElementById('merkChart');
        const transaksiChartEl = document.getElementById('transaksiChart');
        const revenueChartEl = document.getElementById('revenueChart');

        function formatRupiah(value) {
            return 'Rp ' + value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, '.');
        }

        if (merkChartEl) {
            new Chart(merkChartEl, {
                type: 'bar',
                data: {
                    labels: merkLabels,
                    datasets: [{
                        label: 'Jumlah Mobil',
                        data: merkData,
                        backgroundColor: ['#4e73df', '#1cc88a', '#36b9cc', '#f6c23e', '#e74a3b', '#858796'],
                        borderRadius: 8,
                        maxBarThickness: 30,
                    }]
                },
                options: {
                    plugins: { legend: { display: false } },
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: { grid: { display: false } },
                        y: {
                            beginAtZero: true,
                            ticks: { stepSize: 1 }
                        }
                    }
                }
            });
        }

        if (transaksiChartEl) {
            new Chart(transaksiChartEl, {
                type: 'line',
                data: {
                    labels: monthLabels,
                    datasets: [{
                        label: 'Transaksi',
                        data: transaksiData,
                        borderColor: '#4e73df',
                        backgroundColor: 'rgba(78, 115, 223, 0.15)',
                        fill: true,
                        tension: 0.3,
                        pointRadius: 4,
                        pointBackgroundColor: '#4e73df'
                    }]
                },
                options: {
                    plugins: { legend: { display: false } },
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: { grid: { display: false } },
                        y: {
                            beginAtZero: true,
                            ticks: { stepSize: 10 }
                        }
                    }
                }
            });
        }

        if (revenueChartEl) {
            new Chart(revenueChartEl, {
                type: 'bar',
                data: {
                    labels: monthLabels,
                    datasets: [{
                        label: 'Pendapatan',
                        data: revenueData,
                        backgroundColor: '#1cc88a',
                        borderRadius: 8,
                        maxBarThickness: 24,
                    }]
                },
                options: {
                    plugins: {
                        legend: { display: false },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return formatRupiah(context.parsed.y);
                                }
                            }
                        }
                    },
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: { grid: { display: false } },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                callback: function(value) {
                                    return value >= 1000000 ? (value / 1000000) + 'M' : value >= 1000 ? (value / 1000) + 'K' : value;
                                }
                            }
                        }
                    }
                }
            });
        }
    });
</script>

@endsection