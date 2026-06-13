<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use App\Models\Pesanan;
use Illuminate\Http\Request;

class PesananController extends Controller
{
    public function create(Mobil $mobil)
    {
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

        Pesanan::create([
            'mobil_id' => $request->mobil_id,
            'nama_pembeli' => $request->nama_pembeli,
            'email' => auth()->user()->email,
            'telepon' => $request->telepon,
            'alamat' => $request->alamat,
            'jenis' => $request->jenis,
        ]);

        return redirect()
            ->route('mobil.index')
            ->with('success','Pesanan berhasil dibuat');
    }

    public function index()
    {
        return redirect()->route('dashboard.admin');
    }

    public function updateStatus(Request $request, Pesanan $pesanan)
{
    $request->validate([
        'status' => 'required'
    ]);

    $pesanan->update([
        'status' => $request->status
    ]);

    return redirect()
        ->route('dashboard.admin')
        ->with('success', 'Status pesanan berhasil diperbarui');
}
}