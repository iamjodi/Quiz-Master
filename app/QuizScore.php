<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class QuizScore extends Model
{
    protected $table = 'quizscore';
    protected $fillable = ['userid','totalanswer'];
}
