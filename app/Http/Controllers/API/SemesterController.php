<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Semester;

class SemesterController extends Controller
{
    // public function index()

    public function index(){
  
        return response()->json(Semester::all());
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
        
        return response()->json('Program created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $program = Semester::find($id);
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
        Semester::where('id', $id)->update([
            'semester' => $request->semester
        ]);

        
        return response()->json(['Program updated successfully.', new ProgramResource($program)]);
    }

    public function edit($id)
    {
        $cek = Semester::where('id', $id)->first();
        if ($cek->is_active == 1) {
            $active = 2;
        } else {
            $active = 1;
        }
        
        Semester::where('id', '!=', $id)->update([
            'is_active' => 2
        ]);
        Semester::where('id', $id)->update([
            'is_active' => $active
        ]);

        return response()->json('Status Semester berhasil di aktivasi');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    { 
        Semester::where('id', $id)->delete();
        
        return response()->json('Semester deleted successfully');
    }
}
