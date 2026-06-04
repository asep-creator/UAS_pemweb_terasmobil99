<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pesanan extends Model
{
    protected $table = 'pesanan';

    protected $fillable = [
        'mobil_id',
        'nama_pembeli',
        'email',
        'telepon',
        'alamat',
        'status',
        'jenis'
    ];

    public function mobil()
    {
        return $this->belongsTo(Mobil::class);
    }
}