<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('short_urls', function (Blueprint $table) {
             $table->id();
             $table->text('original_url')->nullable();
             $table->string('short_code')->nullable();
             $table->unsignedBigInteger('created_by')->default(0);
             $table->unsignedBigInteger('company_id')->default(0);
             $table->unsignedBigInteger('parent_user_id')->default(0);
             $table->softDeletes();
             $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('short_urls');
    }
};
