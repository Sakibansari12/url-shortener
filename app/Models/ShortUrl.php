<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShortUrl extends Model
{
    use HasFactory;

    protected $table = "short_urls";
    protected $guarded = [];


     public function company()
    {
        return $this->belongsTo(Company::class, 'company_id', 'id');
    }
    public function user()
    {
        return $this->belongsTo(Admin::class, 'created_by', 'id');
    }
}
