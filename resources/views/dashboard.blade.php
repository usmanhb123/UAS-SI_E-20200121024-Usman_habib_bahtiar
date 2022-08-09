
{{-- @if($user->role == "Mahasiswa") --}}
    @extends('layouts.app')    
{{-- @else
    @extends('layouts.appmhs')    
@endif --}}

@section('content')
      <!-- Begin Page Content -->
    <div class="container-fluid">

        <div class="text-center">
            <h1 class="h1 mb-4 text-gray-800">Tugas UAS PII Semester 4</h1>
            <img src="{{asset('logocic.png')}}" alt="" width="50%">
        </div>
        <br>
        <div class="row">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">

                <table>
                    <tr>
                        <td><h3>Nama</h3></td>
                        <td><h3>:</h3></td>
                        <td><h3>Usman Habib Bahtiar</h3></td>
                    </tr>
                    <tr>
                        <td><h3>NIM</h3></td>
                        <td><h3>:</h3></td>
                        <td><h3>20200121024</h3></td>
                    </tr>
                    <tr>
                        <td><h3>Kelas</h3></td>
                        <td><h3>:</h3></td>
                        <td><h3>SI Enterprise 1/4</h3></td>
                    </tr>
                </table>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <!-- Page Heading -->

    </div>
    <!-- /.container-fluid -->

@endsection
              