<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGajiLemburTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gaji_lembur', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->time('jam_masuk_lembur')->nullable();
            $table->time('jam_keluar_lembur')->nullable();
            $table->string('nama')->nullable();
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
        Schema::dropIfExists('gaji_lembur');
    }
}
