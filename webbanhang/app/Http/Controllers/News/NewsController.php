<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;

class NewsController extends Controller {
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
        $dataList = DB::table('news')
            ->where('news.deleted', 0)
            ->orderBy('updated_at', 'desc')
            ->paginate(10);

        return view('news.index')->with([
            'index' => 0,
            'dataList' => $dataList
        ]);
    }

    public function view(Request $request) {
        $newsItem = null;
        if(isset($request->id) && $request->id > 0) {
            $newsItem = DB::table('news')
                ->where('id', $request->id)
                ->get();
            if($newsItem != null && count($newsItem) > 0) {
                $newsItem = $newsItem[0];
            } else {
                $newsItem = null;
            }
        }

        return view('news.view')->with([
            'newsItem' => $newsItem
        ]);
    }

    public function add(Request $request) {
        $title = $request->title;
        $content = $request->content;
        $thumbnail = $request->thumbnail;
        $id = $request->id;

        if(isset($id) && $id > 0) {
            $data = [
                'title' => $title,
                'content' => $content,
                'thumbnail' => $thumbnail,
                'updated_at' => date('Y-m-d H:i:s')
            ];

            DB::table('news')
                ->where('id', $id)
                ->update($data);
        } else {
            $slug = getSlug($title);

            DB::table('news')->insert([
                'title' => $title,
                'content' => $content,
                'thumbnail' => $thumbnail,
                'href_param'  => $slug,
                'updated_at' => date('Y-m-d H:i:s'),
                'created_at' => date('Y-m-d H:i:s')
            ]);
        }

        return redirect()->route('news.index');
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('news')
            ->where('id', $id)
            ->update([
                'deleted' => 1
            ]);

        return redirect()->route('news.index');
    }
}
