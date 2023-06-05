<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Seccione extends Model
{

    protected $table = "secciones";

    public function seguros(){
        return $this->hasMany('App\Models\Seguro' ,'id_seccion');
    }


}
