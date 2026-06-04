<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mobil;

class HomeController extends Controller
{
    public function index()
    {
        $mobil = Mobil::latest()
            ->take(6)
            ->get();

        return view(
            'home.index',
            compact('mobil')
        );
    }

    public function galeri(Request $request)
    {
        $query = Mobil::query();

        if ($request->search) {

            $query->where(function ($q) use ($request) {

                $q->where(
                    'nama',
                    'like',
                    '%' . $request->search . '%'
                )
                ->orWhere(
                    'merk',
                    'like',
                    '%' . $request->search . '%'
                );

            });
        }

        if ($request->tahun) {

            $query->where(
                'tahun',
                $request->tahun
            );
        }

        $mobil = $query
            ->latest()
            ->paginate(6);

        $mobil->appends($request->all());

        return view(
            'home.galeri',
            compact('mobil')
        );
    }

    public function detail(Mobil $mobil)
    {
        return view(
            'home.detail',
            compact('mobil')
        );
    }
    public function tentang()
{
    return view('home.tentang');
}
}