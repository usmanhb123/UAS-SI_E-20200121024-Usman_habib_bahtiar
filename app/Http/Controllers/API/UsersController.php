<?php

namespace App\Http\Controllers\API;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Validator;
use App\Models\Users;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class UsersController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return response()->json(Users::all());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'email' => 'required',
            'role' => 'required'
        ]);

       
        $mhs = New User;
        $mhs->no_induk = $request->nim;
        $mhs->name = $request->name;
        $mhs->email = $request->email;
        $mhs->alamat = $request->alamat;
        $mhs->nomor_telepon = $request->tlp;
        $mhs->role = $request->role;
        $mhs->password = Hash::make('12345678');
        $mhs->save();
        
        return response()->json('User created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $program = Users::find($id);
        if (is_null($program)) {
            return response()->json('Data not found', 404); 
        }
        return response()->json($program);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Program $program)
    {
        
        User::where('id', $id)->update([
            'no_induk' => $request->nim,
            'name' => $request->name,
            'alamat' => $request->alamat,
            'nomor_telepon' => $request->tlp,
            'email' => $request->email,
        ]);
        
        return response()->json(['User updated successfully.']);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    { 
        User::where('id', $id)->delete();
        
        return response()->json('Program deleted successfully');
    }
}
