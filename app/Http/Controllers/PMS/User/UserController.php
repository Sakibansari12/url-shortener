<?php

namespace App\Http\Controllers\PMS\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use App\Models\Admin;
use App\Models\Company;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $query = Admin::with('company')->orderBy('id', 'desc');

        if ($request->filled('search_user')) {
            $query->where('name', 'like', '%' . $request->search_user . '%');
        }

        //$query->where('parent_user_id', Auth::guard('admin')->user()->id);
        if (Auth::guard('admin')->user()->id != 1) {
            $query->where('parent_user_id', Auth::guard('admin')->user()->id);
        }
        $items = $query->where('id','!=',1)->paginate(50)->withQueryString();

        return view('pms.user.list', compact('items'));
    }


    public function form($id = null)
    {
        $detail = $id ? Admin::find($id) : null;
        $query = Role::orderBy('id', 'asc')->where('status', 1);
        $query->where('id', '!=', Auth::guard('admin')->user()->role_id);
        if (Auth::guard('admin')->user()->role_id == 2) {
           $query->where('id', '!=', 3);
        }



        $query->where('id', '!=', 1);
        $roles= $query->get();
        $companies = Company::get();
        return view('pms.user.form', compact('detail', 'roles','companies'));
    }


    public function save(Request $request)
    {
        
        $request->validate([
            'role_id' => 'required',
            'company_id' => 'required',
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:admins,email,' . ($request->id ?? 'NULL') . ',id',
            'mobile' => 'required|string|max:13|regex:/^\+?\d+$/',
            'password' => $request->id ? 'nullable' : 'required'
        ]);
        $role = Role::where('id', $request->role_id)->where('status', 1)->firstOrFail();
        
        $data = Admin::firstOrNew(['id' => $request->id]);
        $data->name = $request->name;
        $data->email = $request->email;
        $data->mobile_no = $request->mobile;
        if ($request->password) {
            $data->password = Hash::make($request->password);
        }
        $data->role = $role->role_name;
        $data->role_id = $request->role_id;
        $data->company_id = $request->company_id;
        $data->parent_user_id = Auth::guard('admin')->user()->id;
        $data->save();
        return redirect()->route('pms.user.list')
            ->with('success', $request->id ? 'User updated successfully.' : 'User saved successfully.');
    }

    public function toggleStatus($id)
    {
        try {
            $detail = Admin::where(['id' => $id])->first();
            Admin::where(['id' => $id])->update(['status' => !$detail->status]);
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'Status updated successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => "Internal Error",
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function delete($id)
    {
        try {
            $user = Admin::findOrFail($id);
            $user->delete();
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'User deleted successfully'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Internal Error',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
    public function multiDelete(Request $request)
    {
        $ids = $request->input('ids');
        if (empty($ids) || !is_array($ids)) {
            return response()->json([
                'status' => false,
                'message' => 'No users selected for deletion.'
            ], 400);
        }
        try {
            Admin::whereIn('id', $ids)->delete();
            return response()->json([
                'status' => true,
                'message' => 'User(s) deleted successfully.'
            ], 200);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Internal Error',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}
