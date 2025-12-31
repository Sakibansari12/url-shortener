<?php

namespace App\Http\Controllers\PMS\ShortUrl;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Role;
use App\Models\Admin;
use App\Models\Invitation;
use App\Models\ShortUrl;
use Illuminate\Support\Str;
use DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class ShortUrlController extends Controller
{


public function redirect($code)
{
    $short = ShortUrl::where('short_code', $code)->firstOrFail();

    return redirect()->away($short->original_url);
}






    public function index(Request $request)
{
    $query = ShortUrl::with('company', 'user')
        ->orderBy('id', 'desc');

    if ($request->filled('search_original_url')) {
        $query->where('original_url', 'like', '%' . $request->search_original_url . '%');
    }

    $authUser = Auth::guard('admin')->user();
    if ($authUser->id != 1) {
        if ($authUser->role_id == 2) {
            $query->where(function ($q) use ($authUser) {
                $q->where('created_by', $authUser->id)
                  ->orWhere('parent_user_id', $authUser->id);
            });
        }
        else {
            $query->where('created_by', $authUser->id);
        }
    }

    $items = $query->paginate(50)->withQueryString();

    return view('pms.shorturl.list', compact('items'));
}



    public function form($id = null)
    {
        $detail = $id ? ShortUrl::find($id) : null;
        return view('pms.shorturl.form', compact('detail'));
    }


    public function save(Request $request)
    {
        
        $request->validate([
            'original_url' => 'required|url'
        ]);
        
        $data = ShortUrl::firstOrNew(['id' => $request->id]);
        $data->original_url = $request->original_url;
        $data->company_id = Auth::guard('admin')->user()->company_id;
        $data->created_by = Auth::guard('admin')->user()->id;
        $data->short_code = Str::random(6);
        $data->parent_user_id = Auth::guard('admin')->user()->parent_user_id;
        $data->save();
        return redirect()->route('pms.shorturl.list')
            ->with('success', $request->id ? 'ShortUrl updated successfully.' : 'ShortUrl saved successfully.');
    }

    public function toggleStatus($id)
    {
        try {
            $detail = ShortUrl::where(['id' => $id])->first();
            ShortUrl::where(['id' => $id])->update(['status' => !$detail->status]);
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
            $user = ShortUrl::findOrFail($id);
            $user->delete();
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'ShortUrl deleted successfully'
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
                'message' => 'No ShortUrl selected for deletion.'
            ], 400);
        }
        try {
            ShortUrl::whereIn('id', $ids)->delete();
            return response()->json([
                'status' => true,
                'message' => 'ShortUrl(s) deleted successfully.'
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
