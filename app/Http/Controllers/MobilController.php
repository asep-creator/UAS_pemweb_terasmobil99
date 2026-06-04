<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class MobilController extends Controller
{
    public function index()
    {
        $mobil = Mobil::latest()->paginate(10);

        return view('mobil.index', compact('mobil'));
    }

    public function create()
    {
        return view('mobil.create');
    }

    public function store(Request $request)
{
    $data = $request->validate([
        'nama' => 'required',
        'merk' => 'required',
        'tipe' => 'required',
        'tahun' => 'required',
        'harga' => 'required',
        'deskripsi' => 'nullable',

        'gambar1' => 'nullable|image',
        'gambar2' => 'nullable|image',
        'gambar3' => 'nullable|image',
    ]);

    if ($request->hasFile('gambar1')) {
        $data['gambar1'] = $request
            ->file('gambar1')
            ->store('mobil', 'public');
    }

    if ($request->hasFile('gambar2')) {
        $data['gambar2'] = $request
            ->file('gambar2')
            ->store('mobil', 'public');
    }

    if ($request->hasFile('gambar3')) {
        $data['gambar3'] = $request
            ->file('gambar3')
            ->store('mobil', 'public');
    }

    Mobil::create($data);

    return redirect()
        ->route('mobil.index')
        ->with('success', 'Mobil berhasil ditambahkan');
}

    public function show(Mobil $mobil)
    {
        return view('mobil.show', compact('mobil'));
    }

    public function edit(Mobil $mobil)
    {
        return view('mobil.edit', compact('mobil'));
    }

    public function update(Request $request, Mobil $mobil)
{
    $data = $request->validate([
        'nama' => 'required',
        'merk' => 'required',
        'tipe' => 'required',
        'tahun' => 'required',
        'harga' => 'required',
        'deskripsi' => 'nullable',

        'gambar1' => 'nullable|image',
        'gambar2' => 'nullable|image',
        'gambar3' => 'nullable|image',
    ]);

    if ($request->hasFile('gambar1')) {

    if ($mobil->gambar1) {
        Storage::disk('public')
            ->delete($mobil->gambar1);
    }

    $data['gambar1'] =
        $request->file('gambar1')
        ->store('mobil','public');
    }

    if ($request->hasFile('gambar2')) {

    if ($mobil->gambar2) {
        Storage::disk('public')
            ->delete($mobil->gambar2);
    }

    $data['gambar2'] =
        $request->file('gambar2')
        ->store('mobil','public');
    }   

    if ($request->hasFile('gambar3')) {

    if ($mobil->gambar3) {
        Storage::disk('public')
            ->delete($mobil->gambar3);
    }

    $data['gambar3'] =
        $request->file('gambar3')
        ->store('mobil','public');
    }

    $mobil->update($data);

    return redirect()
        ->route('mobil.index')
        ->with('success','Mobil berhasil diupdate');
}

    public function destroy(Mobil $mobil)
{
    if ($mobil->gambar1) {
        Storage::disk('public')
            ->delete($mobil->gambar1);
    }

    if ($mobil->gambar2) {
        Storage::disk('public')
            ->delete($mobil->gambar2);
    }

    if ($mobil->gambar3) {
        Storage::disk('public')
            ->delete($mobil->gambar3);
    }

    $mobil->delete();

    return redirect()
        ->route('mobil.index')
        ->with('success', 'Mobil berhasil dihapus');
    }
}