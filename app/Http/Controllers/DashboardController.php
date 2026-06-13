<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use App\Models\Pesanan;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\StreamedResponse;

class DashboardController extends Controller
{
    public function index()
    {
        $jumlahMobil = Mobil::count();

        $jumlahPesanan = Pesanan::count();

        $totalPenjualan = Pesanan::join('mobil', 'pesanan.mobil_id', '=', 'mobil.id')
            ->sum('mobil.harga');

        $pesananPending = Pesanan::where(
            'status',
            'Pending'
        )->count();

        $pesananSelesai = Pesanan::where(
            'status',
            'Selesai'
        )->count();

        $jumlahUser = User::count();

        $pesanan = Pesanan::with('mobil')
            ->latest()
            ->get();

        $merkCounts = Mobil::select('merk', DB::raw('count(*) as total'))
            ->groupBy('merk')
            ->orderByDesc('total')
            ->pluck('total', 'merk');

        $monthLabels = ['Jan','Feb','Mar','Apr','Mei','Jun','Jul','Agu','Sep','Okt','Nov','Des'];

        $transaksiRaw = Pesanan::selectRaw('MONTH(created_at) as month, count(*) as total')
            ->groupBy('month')
            ->pluck('total', 'month');

        $penghasilanRaw = Pesanan::join('mobil', 'pesanan.mobil_id', '=', 'mobil.id')
            ->selectRaw('MONTH(pesanan.created_at) as month, sum(mobil.harga) as total')
            ->groupBy('month')
            ->pluck('total', 'month');

        $transaksiPerBulan = collect(range(1, 12))->map(fn ($month) => $transaksiRaw->get($month, 0))->toArray();
        $penghasilanPerBulan = collect(range(1, 12))->map(fn ($month) => $penghasilanRaw->get($month, 0))->toArray();

        return view(
            'dashboard',
            compact(
                'jumlahMobil',
                'jumlahPesanan',
                'totalPenjualan',
                'pesananPending',
                'pesananSelesai',
                'jumlahUser',
                'pesanan',
                'merkCounts',
                'monthLabels',
                'transaksiPerBulan',
                'penghasilanPerBulan'
            )
        );
    }

    public function exportPesanan(Request $request): StreamedResponse
    {
        $month = $request->query('month'); // expected format YYYY-MM

        $query = Pesanan::with('mobil')->orderByDesc('created_at');

        if ($month) {
            [$year, $m] = explode('-', $month);
            $query->whereYear('created_at', $year)->whereMonth('created_at', $m);
        }

        $pesanan = $query->get();

        $filename = 'riwayat_pembelian_' . ($month ? $month : date('Y-m-d')) . '.csv';

        $headers = [
            'Content-Type' => 'text/csv; charset=UTF-8',
            'Content-Disposition' => "attachment; filename=\"{$filename}\"",
        ];

        $delimiter = ';';

        $callback = function () use ($pesanan, $delimiter) {
            $out = fopen('php://output', 'w');
            // BOM for Excel UTF-8
            fwrite($out, "\xEF\xBB\xBF");

            // Header row
            fputcsv($out, [
                'ID', 'Nama Pembeli', 'Email', 'Telepon', 'Alamat', 'Mobil', 'Tahun', 'Harga', 'Jenis', 'Status', 'Created At'
            ], $delimiter);

            foreach ($pesanan as $p) {
                $harga = $p->mobil?->harga;
                // Ensure numeric price has no thousand separators
                $harga = $harga !== null ? (string) (0 + $harga) : '';

                $created = $p->created_at ? $p->created_at->format('Y-m-d H:i:s') : '';

                fputcsv($out, [
                    $p->id,
                    $p->nama_pembeli,
                    $p->email,
                    $p->telepon,
                    $p->alamat,
                    $p->mobil?->nama,
                    $p->mobil?->tahun,
                    $harga,
                    $p->jenis,
                    $p->status,
                    $created,
                ], $delimiter);
            }

            fclose($out);
        };

        return response()->stream($callback, 200, $headers);
    }

}