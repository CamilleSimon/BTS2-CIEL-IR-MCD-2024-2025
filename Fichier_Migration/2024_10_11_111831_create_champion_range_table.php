<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
	{
		Schema::create('champion_range', function (Blueprint $table) {
			$table->id('champion_range_id');
			$table->foreignId('champion_id')->constrained();
			$table->foreignId('range_id')->constrained();
			$table->unique(['champion_id', 'range_id']);
		});
	}

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('champion_range');
    }
};
