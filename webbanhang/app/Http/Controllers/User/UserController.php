<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller {
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
        $dataList = DB::table('users')
            ->leftJoin('role', 'role.id', '=', 'users.role_id')
            ->where('users.deleted', 0)
            ->select('users.*', 'role.name as role_name')
            ->paginate(10);

        return view('user.index')->with([
            'index' => 0,
            'dataList' => $dataList
        ]);
    }

    public function view(Request $request) {
        $roleList = DB::table('role')->get();

        $user = null;
        if(isset($request->id) && $request->id > 0) {
            $user = DB::table('users')
                ->where('id', $request->id)
                ->get();
            if($user != null && count($user) > 0) {
                $user = $user[0];
            } else {
                $user = null;
            }
        }

        return view('user.view')->with([
            'roleList' => $roleList,
            'user' => $user
        ]);
    }

    public function add(Request $request) {
        $name = $request->name;
        $email = $request->email;
        $phone_number = $request->phone_number;
        $address = $request->address;
        $password = $request->password;
        $role_id = $request->role_id;
        $id = $request->id;

        if(isset($id) && $id > 0) {
            $data = [
                'name' => $name,
                'email' => $email,
                'phone_number' => $phone_number,
                'address' => $address,
                'updated_at' => date('Y-m-d H:i:s'),
                'role_id' => $role_id
            ];
            if($password != null && $password != '') {
                $data['password'] = Hash::make($password);
            }

            DB::table('users')
                ->where('id', $id)
                ->update($data);
        } else {
            $checkItem = DB::table('users')
                ->where('email', $email)
                ->get();
            if($checkItem == null || count($checkItem) == 0) {
                DB::table('users')->insert([
                    'name' => $name,
                    'email' => $email,
                    'phone_number' => $phone_number,
                    'address' => $address,
                    'created_at' => date('Y-m-d H:i:s'),
                    'updated_at' => date('Y-m-d H:i:s'),
                    'deleted' => 0,
                    'role_id' => $role_id,
                    'password' => Hash::make($password)
                ]);
            } else {
                return redirect()->route('user.view');
            }
        }

        return redirect()->route('user.index');
    }

    public function delete(Request $request) {
        $id = $request->id;

        DB::table('users')
            ->where('id', $id)
            ->update([
                'deleted' => 1
            ]);

        return redirect()->route('user.index');
    }
}
