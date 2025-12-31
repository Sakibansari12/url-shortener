<?php

namespace App\Http\Controllers\PMS\Invitation;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use App\Models\Admin;
use App\Models\Invitation;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class InvitationController extends Controller
{


    public function show($token)
    {
        $detail = Invitation::where('token', $token)
            ->where('status', 0)
            ->firstOrFail();
        $query = Role::orderBy('id', 'asc')->where('status', 1);
        $query->where('id', '!=', 1);
        $roles= $query->get();

        return view('pms.invitation.accept-invite', compact('detail','roles'));
    }


    public function store(Request $request, $token)
    {
        
        $request->validate([
            'password' => 'required',
        ]);

        $invite = Invitation::where('token', $token)
            ->where('status', 0) 
            ->firstOrFail();
        $role = Role::where('id', $invite->role_id)->first();
        Admin::create([
            'name' => explode('@', $invite->email)[0],
            'email' => $invite->email,
            'password' => bcrypt($request->password),
            'role_id' => $invite->role_id,
            'role' => $role->role_name,
            'company_id' => $invite->company_id,
            'status' => 1,
        ]);

        $invite->update(['status' => 1]); 

        return redirect('pms/login')
            ->with('success', 'Account created successfully. Please login.');
            
    }



    public function index(Request $request)
    {
        $query = Invitation::with('role', 'user')->orderBy('id', 'desc');

        if ($request->filled('search_email')) {
            $query->where('email', 'like', '%' . $request->search_email . '%');
        }
   
        $items = $query->paginate(50)->withQueryString();

        return view('pms.invitation.list', compact('items'));
    }


    public function form($id = null)
    {
        $detail = $id ? Invitation::find($id) : null;
        $query = Role::orderBy('id', 'asc')->where('status', 1);
        $query->where('id', '!=', 1);
        $roles= $query->get();
        return view('pms.invitation.form', compact('detail', 'roles'));
    }


    public function save(Request $request)
    {
        
        $request->validate([
            'role_id' => 'required',
            'email' => 'required|email|max:255|unique:invitations,email,' . ($request->id ?? 'NULL') . ',id',
        ]);
        $role = Role::where('id', $request->role_id)->where('status', 1)->firstOrFail();
        
        $data = Invitation::firstOrNew(['id' => $request->id]);
        
        $data->email = $request->email;
        $data->role_id = $request->role_id;
        $data->company_id = Auth::guard('admin')->user()->company_id;
        $data->token = \Str::uuid();
        $data->created_by = Auth::guard('admin')->user()->id;
        $data->save();
        return redirect()->route('pms.invitation.list')
            ->with('success', $request->id ? 'Invitation updated successfully.' : 'Invitation saved successfully.');
    }

    public function toggleStatus($id)
    {
        try {
            $detail = Invitation::where(['id' => $id])->first();
            Invitation::where(['id' => $id])->update(['status' => !$detail->status]);
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
            $user = Invitation::findOrFail($id);
            $user->delete();
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'Invitation deleted successfully'
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
                'message' => 'No Invitation selected for deletion.'
            ], 400);
        }
        try {
            Invitation::whereIn('id', $ids)->delete();
            return response()->json([
                'status' => true,
                'message' => 'Invitation(s) deleted successfully.'
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
