<?php

namespace App\Http\Controllers\PMS\Company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use App\Models\Company;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\DB;

class CompanyController extends Controller
{   

    public function index(Request $request){
        $query = Company::query();

        if ($request->filled('search')) {
            $query->where('name', 'like', '%' . $request->search . '%');
        }
        $items = $query->orderby('id','desc')->paginate(20)->withQueryString();
        return view('pms.company.list',compact('items'));
    }

    public function form($id=null){
        $detail = Company::where('id',$id)->first();
        
        return view('pms.company.form',compact('detail'));
    }

        public function save(Request $request)
        {
            $request->validate([
                'company_name' => 'required|unique:companies,name,' . $request->id,
            ]);

            $data = [
                'name' => $request->company_name,
                'status' => 1,
            ];
            if ($request->id) {
                Company::where('id', $request->id)->update($data);
                return redirect()->route('pms.company.list')->with('success', 'Company updated successfully!');
            }
            Company::create($data);

            return redirect()->route('pms.company.list')->with('success', 'Company added successfully!');
        }


    public function toggleStatus($id){   
        try {
            $detail = Company::where(['id'=>$id])->first();
            Company::where(['id'=>$id])->update(['status'=>!$detail->status]);
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'Status updated successfully'
            ], 200);
        }
        catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => "Internal Error",
                'error' => $e->getMessage(),
            ], 500);
        }
    }

    public function delete($id){   
        try {
            Company::where('id', $id)->delete();
            return response()->json([
                'status' => true,
                'data' => '',
                'message' => 'Company deleted successfully'
            ], 200);
        }
        catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => "Internal Error",
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
                'message' => 'No company selected for deletion.'
            ], 400);
        }

        try {
            Company::whereIn('id', $ids)->delete();
            return response()->json([
                'status' => true,
                'message' => 'company(s) deleted successfully.'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Internal Error',
                'error' => $e->getMessage()
            ], 500);
        }
    }

    
}
