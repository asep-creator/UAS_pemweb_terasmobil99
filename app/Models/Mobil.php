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

    public function activePesanan()
    {
        return $this->hasMany(Pesanan::class)
            ->whereIn('status', ['Pending', 'Diproses']);
    }

    public function finishedPesanan()
    {
        return $this->hasMany(Pesanan::class)
            ->where('status', 'Selesai');
    }

    public function getOrderStateAttribute()
    {
        if (($this->finished_pesanan_count ?? null) !== null) {
            if ($this->finished_pesanan_count > 0) {
                return 'sold';
            }
        }

        if (($this->active_pesanan_count ?? null) !== null) {
            if ($this->active_pesanan_count > 0) {
                return 'reserved';
            }
        }

        if ($this->finishedPesanan()->exists()) {
            return 'sold';
        }

        if ($this->activePesanan()->exists()) {
            return 'reserved';
        }

        return null;
    }

    public function getOrderStateLabelAttribute()
    {
        return match ($this->order_state) {
            'sold' => 'Sold out',
            'reserved' => 'Dalam pesanan orang lain',
            default => null,
        };
    }

    public function getIsOrderAvailableAttribute()
    {
        return $this->order_state === null;
    }
}
