<?php

namespace App\Http\Controllers\PMS;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Carbon\Carbon;

class DashboardController extends Controller{
    
    
    public function dashboard(Request $request){
         $user = Auth::guard('admin')->user();
        return view('pms.dashboard.index', compact('user'));
    }
}