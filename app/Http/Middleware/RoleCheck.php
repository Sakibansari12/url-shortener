<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Support\Facades\Auth;

class RoleCheck
{
    public function handle(Request $request, Closure $next, ...$roles)
    {  
        if (Auth::check()) {
            return redirect('/pms/login'); // Redirect to login if not authenticated
        }
        
        $admin = Auth::guard('admin')->user();
         
        // $roleId = (int) $admin->role_id;

        // if ($roleId === 8 && !$request->routeIs('pms.report.sale-report')) {
        //     return redirect()->route('pms.report.sale-report');
        // }


        if (!in_array($admin->role_id, $roles)) {
            return redirect()->route('pms.dashboard');
        }
        
        return $next($request);
        
    }
}
