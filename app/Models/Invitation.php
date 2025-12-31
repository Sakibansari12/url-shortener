<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invitation extends Model
{
    use HasFactory;

    protected $table = "invitations";
    protected $guarded = [];


    public function role()
    {
        return $this->belongsTo(Role::class, 'role_id', 'id');
    }
    public function user()
    {
        return $this->belongsTo(Admin::class, 'created_by', 'id');
    }
}

