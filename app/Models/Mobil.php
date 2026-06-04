<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Pesanan;

class Mobil extends Model
{
    protected $table = 'mobil';

    protected $fillable = [
        'nama',
        'merk',
        'tipe',
        'tahun',
        'harga',
        'gambar1',
        'gambar2',
        'gambar3',
        'deskripsi'
    ];

    public function pesanan()
    {
        return $this->hasMany(Pesanan::class);
    }
}
