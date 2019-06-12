<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateArriendoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('arriendo', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('vencimiento');
            $table->integer('contrato_id_contrato');
            $table->boolean('recordatorio_pagos');
            $table->integer('valor_arriendo');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('arriendo');
    }
}
