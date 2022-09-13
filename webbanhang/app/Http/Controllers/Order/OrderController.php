<?php

namespace App\Http\Controllers\Order;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class OrderController extends Controller {
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
        $dataList = DB::table('orders')
            ->orderBy('status', 'asc')
            ->orderBy('order_date', 'desc')
            ->paginate(10);

        return view('order.index')->with([
            'index' => 0,
            'dataList' => $dataList
        ]);
    }

    public function detail(Request $request) {
        $id = $request->id;

        $dataList = DB::table('orders')
            ->where('id', $id)
            ->get();
        if($dataList != null && count($dataList) > 0) {
            $item = $dataList[0];
            $itemList = DB::table('order_details')
                ->leftJoin('product', 'product.id', '=', 'order_details.product_id')
                ->where('order_details.order_id', $id)
                ->select('order_details.*', 'product.title', 'product.thumbnail')
                ->get();
            return view('order.detail')->with([
                'index' => 0,
                'orderItem' => $item,
                'itemList' => $itemList
            ]);
        }

        return redirect()->route('order.index');
    }

    public function update(Request $request) {
        $id = $request->id;

        DB::table('orders')
            ->where('id', $id)
            ->update([
                'status' => $request->status
            ]);
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('orders')
            ->where('id', $id)
            ->delete();
    }
}
