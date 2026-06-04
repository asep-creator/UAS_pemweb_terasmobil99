<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use App\Models\Pesanan;
use App\Models\User;
use Illuminate\Support\Facades\DB;

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
}