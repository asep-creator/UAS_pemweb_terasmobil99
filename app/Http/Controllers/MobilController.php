<?php

namespace App\Http\Controllers;

use App\Models\Mobil;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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

    $uploadedFiles = [];

    if ($request->hasFile('gambar1')) {
        $uploadedFiles['gambar1'] = $request->file('gambar1')->store('mobil', 'public');
        $data['gambar1'] = $uploadedFiles['gambar1'];
    }

    if ($request->hasFile('gambar2')) {
        $uploadedFiles['gambar2'] = $request->file('gambar2')->store('mobil', 'public');
        $data['gambar2'] = $uploadedFiles['gambar2'];
    }

    if ($request->hasFile('gambar3')) {
        $uploadedFiles['gambar3'] = $request->file('gambar3')->store('mobil', 'public');
        $data['gambar3'] = $uploadedFiles['gambar3'];
    }

    try {
        DB::transaction(function () use ($data) {
            Mobil::create($data);
        });
    } catch (\Throwable $e) {
        foreach ($uploadedFiles as $path) {
            Storage::disk('public')->delete($path);
        }

        throw $e;
    }

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

    $uploadedFiles = [];
    $oldFiles = [];

    if ($request->hasFile('gambar1')) {
        $uploadedFiles['gambar1'] = $request->file('gambar1')->store('mobil', 'public');
        $data['gambar1'] = $uploadedFiles['gambar1'];
        $oldFiles[] = $mobil->gambar1;
    }

    if ($request->hasFile('gambar2')) {
        $uploadedFiles['gambar2'] = $request->file('gambar2')->store('mobil', 'public');
        $data['gambar2'] = $uploadedFiles['gambar2'];
        $oldFiles[] = $mobil->gambar2;
    }

    if ($request->hasFile('gambar3')) {
        $uploadedFiles['gambar3'] = $request->file('gambar3')->store('mobil', 'public');
        $data['gambar3'] = $uploadedFiles['gambar3'];
        $oldFiles[] = $mobil->gambar3;
    }

    try {
        DB::transaction(function () use ($mobil, $data) {
            $mobil->update($data);
        });
    } catch (\Throwable $e) {
        foreach ($uploadedFiles as $path) {
            Storage::disk('public')->delete($path);
        }

        throw $e;
    }

    foreach ($oldFiles as $path) {
        if ($path) {
            Storage::disk('public')->delete($path);
        }
    }

    return redirect()
        ->route('mobil.index')
        ->with('success','Mobil berhasil diupdate');
}

    public function destroy(Mobil $mobil)
{
    $oldFiles = [];

    if ($mobil->gambar1) {
        $oldFiles[] = $mobil->gambar1;
    }

    if ($mobil->gambar2) {
        $oldFiles[] = $mobil->gambar2;
    }

    if ($mobil->gambar3) {
        $oldFiles[] = $mobil->gambar3;
    }

    DB::transaction(function () use ($mobil) {
        $mobil->delete();
    });

    foreach ($oldFiles as $path) {
        Storage::disk('public')->delete($path);
    }

    return redirect()
        ->route('mobil.index')
        ->with('success', 'Mobil berhasil dihapus');
    }
}