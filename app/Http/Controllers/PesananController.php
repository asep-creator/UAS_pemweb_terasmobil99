<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use App\Models\Pesanan;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;

class PesananController extends Controller
{
    public function create(Mobil $mobil)
    {
        $mobil->loadCount([
            'activePesanan',
            'finishedPesanan',
        ]);

        if (! $mobil->is_order_available) {
            return redirect()
                ->route('galeri')
                ->withErrors(['mobil_id' => 'Mobil ini sedang dalam pesanan orang lain atau sudah terjual.']);
        }

        return view('pesanan.create', compact('mobil'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'mobil_id' => 'required',
            'nama_pembeli' => 'required',
            'email' => 'required|email',
            'telepon' => 'required',
            'alamat' => 'required',
            'jenis' => 'required|in:cash,kredit',
        ]);

        DB::transaction(function () use ($request) {
            $mobil = Mobil::where('id', $request->mobil_id)
                ->lockForUpdate()
                ->firstOrFail();

            if ($mobil->activePesanan()->exists() || $mobil->finishedPesanan()->exists()) {
                throw ValidationException::withMessages([
                    'mobil_id' => 'Mobil ini sedang dalam pesanan orang lain atau sudah terjual.',
                ]);
            }

            Pesanan::create([
                'mobil_id' => $request->mobil_id,
                'nama_pembeli' => $request->nama_pembeli,
                'email' => auth()->user()->email,
                'telepon' => $request->telepon,
                'alamat' => $request->alamat,
                'jenis' => $request->jenis,
            ]);
        });

        return view('pesanan.success');
    }

    public function index()
    {
        return redirect()->route('dashboard.admin');
    }

    public function updateStatus(Request $request, Pesanan $pesanan)
    {
        $request->validate([
            'status' => 'required|in:Pending,Diproses,Selesai,Dibatalkan',
            'current_status' => 'required|string',
        ]);

        DB::transaction(function () use ($pesanan, $request) {
            $lockedPesanan = Pesanan::where('id', $pesanan->id)
                ->lockForUpdate()
                ->firstOrFail();

            if ($lockedPesanan->status !== $request->current_status) {
                throw ValidationException::withMessages([
                    'status' => 'Status pesanan telah berubah. Harap refresh halaman sebelum memperbarui lagi.',
                ]);
            }

            $lockedPesanan->update([
                'status' => $request->status,
            ]);
        });

        return redirect()
            ->route('dashboard.admin')
            ->with('success', 'Status pesanan berhasil diperbarui');
    }
}
