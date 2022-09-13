<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class CategoryController extends Controller {
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
        $dataList = DB::table('category')
            ->get();

        $id = $request->id;
        $name = '';
        if(isset($id) && $id > 0) {
            $item = DB::table('category')
                ->where('id', $id)
                ->get();
            if($item != null && count($item) > 0) {
                $name = $item[0]->name;
            }
        }

        return view('category.index')->with([
            'dataList' => $dataList,
            'index' => 0,
            'id' => $id,
            'name' => $name
        ]);
    }

    public function add(Request $request) {
        $name = $request->name;
        $id = $request->id;

        $checkItem = DB::table('category')
            ->where('name', $name)
            ->get();
        if($checkItem != null && count($checkItem) > 0) {
            //failed
        } else {
            if($id > 0) {
                DB::table('category')
                    ->where('id', $id)
                    ->update([
                        'name' => $name
                    ]);
            } else {
                DB::table('category')->insert([
                    'name' => $name
                ]);
            }
        }

        return redirect()->route('category.index');
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('category')
            ->where('id', $id)
            ->delete();

        return redirect()->route('category.index');
    }
}
