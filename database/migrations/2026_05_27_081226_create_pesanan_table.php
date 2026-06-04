<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('pesanan', function (Blueprint $table) {
            $table->id();

            $table->foreignId('mobil_id')
                ->constrained('mobil')
                ->onDelete('cascade');

            $table->string('nama_pembeli');
            $table->string('email');
            $table->string('telepon');
            $table->text('alamat');

            $table->enum('status', [
                'Pending',
                'Diproses',
                'Selesai',
                'Dibatalkan'
            ])->default('Pending');

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('pesanan');
    }
};