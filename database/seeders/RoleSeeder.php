<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RoleSeeder extends Seeder
{
    public function run(): void
    {
        $roles = [  
            [
                'id' => 1,
                'role_name' => 'Super Admin',
                'role_slug' => 'super-admin',
                'status' => 1,
            ],
            [
                'id' => 2,
                'role_name' => 'Admin',
                'role_slug' => 'admin',
                'status' => 1,
            ],
            [
                'id' => 3,
                'role_name' => 'Member',
                'role_slug' => 'member',
                'status' => 1,
            ],
            [
                'id' => 4,
                'role_name' => 'Sales',
                'role_slug' => 'sales',
                'status' => 1,
            ],
            [
                'id' => 5,
                'role_name' => 'Manager',
                'role_slug' => 'manager',
                'status' => 1,
            ],
            
        ];

        foreach ($roles as $role) {
            DB::table('roles')->updateOrInsert(
                ['id' => $role['id']], 
                $role                 
            );
        }
    }
}
