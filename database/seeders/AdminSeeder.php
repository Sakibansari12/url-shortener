<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void{
        DB::table('admins')->updateOrInsert(
            [
                'email' => 'sakib@gmail.com'
            ],
            [
                'name' => 'Super Admin',
                'password' => Hash::make('123456'),
                'role' => 'Super Admin',
                'role_id' => '1',
                'parent_user_id' => 1,
                'status'  => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        );
    }
}
