@php
    use App\Models\Absen_mahasiswa;
    use App\Models\Absen;
    use App\Models\Kontrak_mahasiswa;
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
        <h1 class="h3 mb-4 text-gray-800">Absensi Mahasiswa</h1>
        <div class="card">
            <div class="card-body">
                <h5>Pilih Matakuliah</h5>
                <div class="row">
                  <div class="col-3">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                      @foreach ($mk as $no => $item)
                      
                      <a href="{{url('actionabsen/'. $item->id)}}" class="btn
                        @if($item->id == $mkfirst->id)
                            btn-primary
                            @else
                            btn-outline-primary   
                        @endif
                        mb-1">{{$item->nama_matakuliah}}</a>
                      @endforeach
                    </div>
                  </div>
                  <div class="col-9">
                    
                        @php
                            $mhss = Kontrak_mahasiswa::where('matakuliah_id', $mkfirst->id)->where('semester_id', $semester->id)->get();
                        @endphp
                              <table class="table table-responsive">
                            <tr>
                              <td>#</td>
                              <td>NIM</td>
                              <td>Nama</td>
                              @php
                              $abs = Absen::where('matakuliah_id', $mkfirst->id)->where('semester_id', $semester->id)->get();
                          @endphp


                          @foreach ($abs as $no => $ss)
                          <td><h4>P {{$no+1}}</h4>
                            {{$ss->waktu_absen}}</td>
                          @endforeach
                              <td> 
                                @if ($no < 13)
                                    
                                <a  href="{{url('absenMhs/'. $mkfirst->id)}}" class="btn btn-primary ml-2"><i class="fas fa-plus"></i></a>
                                @endif
                              </td>
                            </tr>
                            @foreach ($mhss as $no=> $mhs)
                              <tr>
                                <td>{{$no+1}}</td>
                                <td>{{$mhs->users->no_induk}}</td>
                                <td>{{$mhs->users->name}}</td>
                              
                                @foreach ($abs as $ss)
                                @php
                                   $cek = Absen_mahasiswa::where('users_id', $mhs->users_id)->where('absen_id', $ss->id)->first();
                                @endphp
                                @if($cek)
                                <td class="text-center"><a href="{{url('absenMhs/'. $cek->id . '/edit')}}" class="btn btn-success">Hadir</a></td>
                                @else
                                <td class="text-center"><a href="{{url('actionabsen/'. $mhs->users_id .'/'.$ss->id)}}" class="btn btn-danger">Absen</a></td>
                                    
                                @endif
                            @endforeach
                                <td></td>
                              </tr>
                            @endforeach
                          </table>    
                      
                      
                      
                  </div>
                 
                </div>

              


            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

   @endsection
              