
{{-- @if($user->role == "Dosen") --}}
@extends('layouts.app')    
{{-- @else
    @extends('layouts.appmhs')    
@endif --}}

@section('content')
      <!-- Begin Page Content -->
    <div class="container-fluid">
        <h1 class="h3 mb-4 text-gray-800">Data Dosen</h1>
        <div class="card">
            <div class="card-header">
                <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#exampleModal">Tambah Dosen</button>
            </div>
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>#</td>
                            <td>NIDN</td>
                            <td>Nama</td>
                            <td>Alamat</td>
                            <td>Nomor Telepon</td>
                            <td>Email</td>
                            <td>Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($dosen as $no => $item)
                            
                        <tr>
                            <td>{{$no+1}}</td>
                            <td>{{$item->no_induk}}</td>
                            <td>{{$item->name}}</td>
                            <td>{{$item->alamat}}</td>
                            <td>{{$item->nomor_telepon}}</td>
                            <td>{{$item->email}}</td>
                            <td><button class="btn btn-sm btn-success" data-toggle="modal" data-target="#exampleModal{{$item->id}}">Edit</button> 
                              @if ($item->id != 2)
                                
                              <a href="{{url('dosen/'. $item->id)}}" class="btn btn-sm btn-danger" >Hapus</a>
                              @endif
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
<form action="{{url('dosen/')}}" method="post">
    @csrf
    @method('POST')
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Tambah Dosen</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="nim">NIDN</label>
                <input required type="number" name="nim" class="form-control" id="nim" placeholder="Masukkan NIDN">
              </div>
            <div class="form-group">
                <label for="11">Nama</label>
                <input required type="text" name="name" class="form-control" id="11" placeholder="Masukkan Nama">
              </div>
              <div class="form-group">
                <label>Alamat</label>
                <textarea name="alamat" class="form-control" ></textarea>
              </div>
              <div class="form-group">
                  <label for="kk">Telepon</label>
                  <input required type="text" name="tlp" class="form-control" id="kk" placeholder="Masukkan Nomor telepon">
                </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Email</label>
                <input required type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
              </div>
              <b>Notes :</b> <br>
              Password Default <b>12345678</b>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
      </div>
    </div>
  </div>
</form>




@foreach ($dosen as $no => $item)

<form action="{{url('dosen/'. $item->id)}}" method="post">
    @csrf
    @method('PUT')
<!-- Modal -->
<div class="modal fade" id="exampleModal{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit Dosen</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <div class="form-group">
                <label for="nim">NIDN</label>
                <input required type="number" name="nim" class="form-control" id="nim" placeholder="Masukkan NIM" value="{{$item->no_induk}}">
              </div>
            <div class="form-group">
                <label for="11">Nama</label>
                <input required type="text" name="name" class="form-control" id="11" placeholder="Masukkan Nama" value="{{$item->name}}">
              </div>
              <div class="form-group">
                <label>Alamat</label>
                <textarea name="alamat" class="form-control" >{{$item->alamat}}</textarea>
              </div>
              <div class="form-group">
                  <label for="kk">Telepon</label>
                  <input required type="text" name="tlp" class="form-control" id="kk" placeholder="Masukkan Nomor telepon" value="{{$item->nomor_telepon}}">
                </div>
            <div class="form-group">
                <label for="exampleFormControlInput1">Email</label>
                <input required type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" value="{{$item->email}}">
              </div>
              <b>Notes :</b> <br>
              Password Default <b>12345678</b>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
          <button type="submit" class="btn btn-primary">Simpan</button>
        </div>
      </div>
    </div>
  </div>
</form>
@endforeach
@endsection
              