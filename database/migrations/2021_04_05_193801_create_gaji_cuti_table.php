<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGajiCutiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gaji_cuti', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->datetime('tgl_mulai_cuti')->nullable();
            $table->datetime('tgl_akhir_cuti')->nullable();
            $table->string('nama_cuti')->nullable();
            $table->integer('gaji')->nullable();
            $table->string('id_team')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gaji_cuti');
    }
}
