<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Seguro extends Model
{

    protected $table = "seguros";

    public function seccion(){
        return $this->belongsTo('App\Models\Seccion' ,'id_seccion');
    }

}
