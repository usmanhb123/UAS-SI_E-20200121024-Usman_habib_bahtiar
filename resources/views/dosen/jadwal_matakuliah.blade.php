@php
    use App\Models\Jadwal;
@endphp
{{-- @if($user->role == "Mahasiswa") --}}
@extends('layouts.app')    
{{-- @else
    @extends('layouts.appmhs')    
@endif --}}

@section('content')
      <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <h1 class="h3 mb-4 text-gray-800">Jadwal Matakuliah</h1>
        <div class="card">
            
            <div class="card-body">
              <div class="row">
                <div class="col-lg-4">
                    <img src="{{asset('matkul.svg')}}" width="100%" class="mt-5">
                
                 
                  </div>
                <div class="col-lg-8">
                 
                  <table class="table">
                      <tr>
                          <th>#</th>
                          <th>Matakuliah</th>
                          <th>Jadwal</th>
                          @if ($user->role == "Dosen")
                          <th>Aksi</th>
                          @endif
                      </tr>
                      @foreach ($jadwal as $no => $item)
                          <tr>
                              <td>{{$no+1}}</td>
                              <td>{{$item->nama_matakuliah}}</td>
                              <td>
                                @php
                                    $cek = Jadwal::where('matakuliah_id', $item->id)->first();
                                @endphp
                                @if ($cek)
                                    {{$cek->hari}}, 
                                    {{$cek->waktu}}
                                @else
                                    <i>Jadwal belum disetting</i>
                                @endif
                              </td>
                              @if ($user->role == "Dosen")
                                  
                              <td><button class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$item->id}}">Setting</button></td>
                              @endif
                              </tr>
                          
                      @endforeach
                  </table>
                </div>
                
              </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
    
    @foreach ($jadwal as $no => $item)
    @php
    $cek = Jadwal::where('matakuliah_id', $item->id)->first();
    @endphp
    <form action="{{url('jadwal_matakuliah/'. $item->id)}}" method="post">
        @csrf
        @method('PUT')
<!-- Modal -->
<div class="modal fade" id="exampleModal{{$item->id}}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">{{$item->nama_matakuliah}}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="exampleInputEmail1">Hari</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required name="hari" value="@if(isset($cek->hari)){{$cek->hari}}@endif">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Waktu</label>
                <input type="time" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required name="waktu" value="@if(isset($cek->waktu)){{$cek->waktu}}@endif">
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
      </div>
    </div>
  </div>
</form>
    
    
    
    @endforeach
    
@endsection
              