<?php

namespace App\Http\Controllers\dosen;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Semester;
use App\Models\Absen;
use App\Models\Absen_mahasiswa;
use App\Models\Matakuliah;
use Illuminate\Support\Facades\Auth;

class AbsenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
     
       

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($user, $absen)
    {
        $ll = New Absen_mahasiswa;
        $ll->users_id = $user;
        $ll->absen_id = $absen;
        $ll->save();

        return redirect()->back();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data['title'] = "Absensi Mahasiswa";
        $data['user'] = AUTH::User();
        $data['mhs'] = User::where('role', 'Mahasiswa')->get();
        $data['semester'] = Semester::where('is_active', 1)->first();
        $data['mk'] = Matakuliah::all();
        $data['mkfirst'] = Matakuliah::where('id', $id)->first();
        return view('dosen.absenmhs', $data);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        Absen::where('id', $id)->delete();
        
        return redirect()->back();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
