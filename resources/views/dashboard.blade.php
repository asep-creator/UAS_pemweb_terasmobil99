@extends('layouts.app')

@section('content')

<h2 class="scroll-scale-up mb-4">Dashboard Admin</h2>

<div class="row g-4 mb-4">
    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Total Mobil</h6>
                <h2 class="fw-bold mb-0">{{ $jumlahMobil }}</h2>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Total Transaksi</h6>
                <h2 class="fw-bold mb-0">{{ $jumlahPesanan }}</h2>
            </div>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Total Penjualan</h6>
                <h2 class="fw-bold text-success mb-0">Rp {{ number_format($totalPenjualan,0,',','.') }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="row g-4 mb-4">
    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Jumlah Mobil per Merk</h6>
                <div class="chart-container" style="position: relative; height: 260px; width: 100%;">
                    <canvas id="merkChart" style="display: block; width: 100%; height: 100%;"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Total Transaksi Per Bulan</h6>
                <div class="chart-container" style="position: relative; height: 260px; width: 100%;">
                    <canvas id="transaksiChart" style="display: block; width: 100%; height: 100%;"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card shadow-sm border-0 rounded-4">
            <div class="card-body p-4">
                <h6 class="text-uppercase text-muted small">Total Penghasilan Per Bulan</h6>
                <div class="chart-container" style="position: relative; height: 260px; width: 100%;">
                    <canvas id="revenueChart" style="display: block; width: 100%; height: 100%;"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="card shadow-sm border-0 rounded-4">
    <div class="card-body p-4">
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-start align-items-md-center mb-4">
            <div>
                <h5 class="mb-1">Data Pesanan</h5>
                <p class="text-muted mb-0">Ringkasan pesanan terbaru dan statusnya.</p>
            </div>
            <div class="mt-3 mt-md-0">
                <form class="d-flex" method="GET" action="{{ route('admin.riwayat.export') }}" target="_blank">
                    <input type="month" name="month" class="form-control form-control-sm me-2" />
                    <button type="submit" class="btn btn-sm btn-primary">Unduh Excel</button>
                </form>
            </div>
        </div>

        <div class="table-responsive">
            <table class="table table-hover align-middle mb-0">
                <thead class="bg-light">
                    <tr>
                        <th class="border-0">Nama</th>
                        <th class="border-0">Mobil</th>
                        <th class="border-0">Tahun</th>
                        <th class="border-0">Pembelian</th>
                        <th class="border-0">Status</th>
                        <th class="border-0">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($pesanan as $p)
                        <tr class="bg-white">
                            <td>{{ $p->nama_pembeli }}</td>
                            <td>{{ $p->mobil->nama }}</td>
                            <td>{{ $p->mobil->tahun ?? '-' }}</td>
                            <td>{{ ucfirst($p->jenis ?? 'cash') }}</td>
                            <td>
                                @if($p->status == 'Pending')
                                    <span class="badge rounded-pill bg-warning text-dark">Pending</span>
                                @elseif($p->status == 'Diproses')
                                    <span class="badge rounded-pill bg-primary">Diproses</span>
                                @elseif($p->status == 'Selesai')
                                    <span class="badge rounded-pill bg-success">Selesai</span>
                                @else
                                    <span class="badge rounded-pill bg-danger">Dibatalkan</span>
                                @endif
                            </td>
                            <td>
                                @if($p->status != 'Selesai')
                                    <form action="{{ route('pesanan.status', $p->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('PATCH')
                                        <input type="hidden" name="status" value="Selesai">
                                        <button type="submit" class="btn btn-sm btn-outline-success">✓</button>
                                    </form>
                                @else
                                    <span class="text-success fw-bold">✓</span>
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