<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;

class ProductController extends Controller {
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
        $dataList = DB::table('product')
            ->leftJoin('category', 'category.id', '=', 'product.category_id')
            ->where('product.deleted', 0)
            ->select('product.*', 'category.name as category_name')
            ->orderBy('updated_at', 'desc')
            ->paginate(10);

        return view('product.index')->with([
            'index' => 0,
            'dataList' => $dataList
        ]);
    }

    public function view(Request $request) {
        $categoryList = DB::table('category')->get();

        $product = null;
        if(isset($request->id) && $request->id > 0) {
            $product = DB::table('product')
                ->where('id', $request->id)
                ->get();
            if($product != null && count($product) > 0) {
                $product = $product[0];
            } else {
                $product = null;
            }
        }

        return view('product.view')->with([
            'categoryList' => $categoryList,
            'product' => $product
        ]);
    }

    public function add(Request $request) {
        $title = $request->title;
        $description = $request->description;
        $thumbnail = $request->thumbnail;
        $price = $request->price;
        $discount = $request->discount;
        $category_id = $request->category_id;
        $id = $request->id;

        if(isset($id) && $id > 0) {
            $data = [
                'title' => $title,
                'description' => $description,
                'thumbnail' => $thumbnail,
                'price' => $price,
                'discount' => $discount,
                'category_id' => $category_id,
                'updated_at' => date('Y-m-d H:i:s')
            ];

            DB::table('product')
                ->where('id', $id)
                ->update($data);
        } else {
            $slug = getSlug($title);

            DB::table('product')->insert([
                'title' => $title,
                'description' => $description,
                'thumbnail' => $thumbnail,
                'price' => $price,
                'discount' => $discount,
                'slug'  => $slug,
                'category_id' => $category_id,
                'updated_at' => date('Y-m-d H:i:s'),
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }

        return redirect()->route('product.index');
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('product')
            ->where('id', $id)
            ->update([
                'deleted' => 1
            ]);

        return redirect()->route('product.index');
    }
}
