<?php

namespace App\Http\Controllers\Feedback;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;

class FeedbackController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('checkPermission');
    }
    
    public function index(Request $request) {
        $dataList = DB::table('feedback')
            ->orderBy('status', 'asc')
            ->orderBy('updated_at', 'desc')
            ->paginate(10);

        return view('feedback.index')->with([
            'index' => 0,
            'dataList' => $dataList
        ]);
    }

    public function update(Request $request) {
        $id = $request->id;

        DB::table('feedback')
            ->where('id', $id)
            ->update([
                'status' => 1,
                'updated_at' => date('Y-m-d H:i:s')
            ]);
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('feedback')
            ->where('id', $id)
            ->delete();

        return redirect()->route('feedback.index');
    }
}
