@extends('layouts')

@section('content')
<h1>Edit data Quiz</h1>

<div class="row">
    <div class="col-lg-12">
        <form action="/question/{{$quiz->id}}/update" method="POST">
            {{csrf_field()}}
            <div class="form-group">
                <label for="exampleInputEmail1">Question</label>
                <input name="question" value="{{$quiz->question}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Depan">
            </div>

            <div class="form-group">
                <label for="exampleInputEmail1">Answer</label>
                <input name="answer" value="{{$quiz->answer}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nama Belakang">
            </div>

            <button type="submit" class="btn btn-warning">Edit</button>
        </form>
    </div>
</div>
@endsection
        
    

