@extends('layouts')

@if(Session::has('userid'))

@if(Session::get('role')=='admin')
	@section('content')
		@if(session('sukses'))
	    <div class="alert alert-success" role="alert">
	        {{ session('sukses') }}
	    </div>
		@endif

		<div class="row">
		    <div class="col-6">
		        <h1>List Quiz</h1>
		    </div>

		    <div class="col-6">
		        <!-- Button trigger modal -->
		        <button type="button" class="btn btn-primary btn-sm float-right" data-toggle="modal" data-target="#exampleModal">
		        Tambah data Quiz       
		        </button>
		    </div>
		    <?php $no=1; ?>
		    <table class="table table-bordered table-dark table-paginate">
		        <tr>
		            <th> No </th>
		            <th> Quiz </th>
		            <th> Answer </th>
		            <th colspan="2"></th>
		        </tr>

		        @foreach($data_quiz as $quiz)
		        <tr>
		            <td>{{ $no }}</td>
		            <td>{{ $quiz->question }}</td>
		            <td>{{ $quiz->answer }}</td>
		            <td><a href="/question/{{$quiz->id}}/edit" class="btn btn-warning">Edit</a></td>
		            <td><a href="/question/{{$quiz->id}}/delete" class="btn btn-danger" onclick="return confirm('Yakin mau dihapus?')">Delete</a></td>
		        </tr>
		        <?php $no = $no+1; ?>
		        @endforeach
		    </table>
		</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
		    <div class="modal-content">
		        <div class="modal-header">
		            <h5 class="modal-title" id="exampleModalLabel">Create Question</h5>
		            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		            <span aria-hidden="true">&times;</span>
		            </button>
		        </div>
		        <div class="modal-body">
		            <form action="/question/create" method="POST">
		                {{csrf_field()}}
		                <div class="form-group">
		                    <label for="exampleInputEmail1">Question</label>
		                    <input name="question" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Answer">
		                </div>

		                <div class="form-group">
		                    <label for="exampleInputEmail1">Answer</label>
		                    <input name="answer" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Answer">
		                </div>
		        </div>
		        <div class="modal-footer">
		            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		            <button type="submit" class="btn btn-primary">Submit</button>
		            </form>
		        </div>
		    </div>
		</div>
	@endsection
@endif

@if(Session::get('role')=='user')
	@section('content')
		@if(session('sukses'))
	    <div class="alert alert-success" role="alert">
	        {{ session('sukses') }}
	    </div>
		@endif

		<div class="row">
		    <div class="col-6">
		        <h1>List Quiz</h1>
		    </div>
		    <form action="/question/result" method="POST">
		    	{{ csrf_field() }}
			    <?php $no=1; ?>
			    <table class="table table-bordered table-dark table-paginate">
			        <tr>
			            <th style="width: 50px"> No </th>
			            <th style="width: 450px"> Quiz </th>
			            <th colspan="3"> Answer </th>
			        </tr>

			        @foreach($data_quiz as $quiz)
			        <tr>
			        	<input type="hidden" name="questions[{{ $no }}]" value="{{ $quiz->id }}">
			            <td style="width: 50px">{{ $no }}</td>
			            <td style="width: 450px">{{ $quiz->question }}</td>
			            <td colspan="3"><input type="text" name="answers[{{ $quiz->id }}]" style="width: 100%"></td>
			        </tr>
			        <?php $no = $no+1; ?>
			        @endforeach

			        <tr>
			            <td style="width: 50px"></td>
			            <td style="width: 450px"></td>
			            <td colspan="3"><button type="submit" class="btn btn-primary">Submit</button></td>
			        </tr>
			    </table>
			</form>
		</div>
		</div>
	@endsection
@endif

@endif
