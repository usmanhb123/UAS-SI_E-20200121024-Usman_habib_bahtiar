<?php

namespace App\Http\Controllers\dosen;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Jadwal;
use App\Models\Matakuliah;
use Illuminate\Support\Facades\Auth;

class JadwalMatakuliahController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['title'] = "Jadwal Matakuliah";
        $data['user'] = AUTH::User();
        $data['jadwal'] = Matakuliah::all();

        return view('dosen.jadwal_matakuliah', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       $save = new Semester;
       $save->semester = $request->semester;
       $save->save();

       return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        Semester::where('id', $id)->delete();
        return redirect()->back();
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        
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
     
        Jadwal::where('matakuliah_id', $id)->delete();
        
            $save = new Jadwal;
            $save->hari = $request->hari;
            $save->waktu = $request->waktu;
            $save->matakuliah_id = $id;
            $save->save();

        return redirect()->back();
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
