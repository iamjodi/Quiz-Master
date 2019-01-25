<?php

namespace App\Http\Controllers;

use Auth;
use DB;
use Illuminate\Http\Request;

class QuestionController extends Controller
{
   public function index()
    {
        
        $data_quiz = \App\Quiz::all();
        
        return view('index',['data_quiz'=> $data_quiz]);
    }
    
    public function create(Request $request)
    {
        \App\Quiz::create($request->all());
        return redirect('/question/index')->with('sukses','Data Berhasil diinput');
    }

    public function edit($id)
    {
        $quiz = \App\Quiz::find($id);

        return view('edit',['quiz' => $quiz]);
    }

    public function update(Request $request, $id)
    {
        $quiz = \App\Quiz::find($id);
        $quiz->update($request->all());

        return redirect('/question/index')->with('sukses','Data Berhasil diupdate');
    }

    public function delete($id)
    {
        $quiz = \App\Quiz::find($id);
        $quiz->delete();

        return redirect('/question/index')->with('sukses','Data Berhasil didelete');
    }

    public function result(Request $request){
    	$result = 0;

        $test = \App\QuizScore::create([
            'userid' => Auth::id(),
            'totalanswer'  => $result,
        ]);

        foreach ($request->input('questions', []) as $key => $question) {
            if($request->input('answers.'.$question) != null)
            {
                $result_search = \App\Quiz::find($question);

                if($result_search->answer == $request->input('answers.'.$question)){
                    $result++;
                    // echo $question . '<br/>';
                    // echo 'right answer : '.$request->input('answers.'.$question). '<br/>';
                }else{
                    // echo $question . '<br/>';
                    // echo 'wrong answer : '.$request->input('answers.'.$question). '<br/>';
                }
            }
            
            
        }

        $test->update(['totalanswer' => $result]);

        return redirect('/question/index')->with('sukses','Score = '.$result);
        //return redirect()->route('results.show', [$test->id]);
    }
}
