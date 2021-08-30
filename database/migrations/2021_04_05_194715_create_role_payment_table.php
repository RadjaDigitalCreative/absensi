<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRolePaymentTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('role_payment', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->integer('user_id')->nullable();
            $table->datetime('dibayar')->nullable();
            $table->datetime('tgl_bayar')->nullable();
            $table->integer('harga')->nullable();
            $table->integer('bank')->nullable();
            $table->integer('pay')->nullable();
            $table->string('image')->nullable();
            $table->integer('is_read')->nullable();
            $table->string('bulan')->nullable();
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
        Schema::dropIfExists('role_payment');
    }
}
