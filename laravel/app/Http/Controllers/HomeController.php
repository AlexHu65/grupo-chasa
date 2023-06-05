<?php

namespace App\Http\Controllers;

// Modelos
use App\Models\Comentario;
use App\Models\BannersInteriore;
use App\Models\Servicios;
use App\Models\Seccione;
use App\Models\Seguro;
// request
use App\Http\Requests\ComentarioRequest;
use Illuminate\Http\Request;

class HomeController extends Controller
{

  public function index()
  {
    $secciones = Seccione::where(['activo' =>'1'])->get();
    $banners = BannersInteriore::where('activo', '1')->orderBy('orden', 'asc')->get();
    $servicios = Servicios::where('activo', '1')->orderBy('orden', 'asc')->get();
    return view('home.index', ['baners'=>$banners,'servicios'=>$servicios , 'secciones' => $secciones ,'menu' => 'Inicio']);
  }

  public function seccion(Request $request){
    $secciones = Seccione::where(['activo' =>'1'])->orderBy('orden', 'asc')->get();
    $seccion = Seccione::where(['activo' => '1' , 'slug' => $request->seccion])->first();
    $interior = $this->quitar_tildes($seccion->menu);
    return view('seccion.index' , ['interior' => $interior ,'seccion' => $seccion , 'secciones' => $secciones ,'menu' => strtolower($seccion->menu)]);
  }

  public function seguros(Request $request){
    $secciones = Seccione::where(['activo' =>'1'])->orderBy('orden', 'asc')->get();
    $seccion = Seccione::where(['activo' => '1' , 'slug' => $request->seccion])->first();
    $seguro = Seguro::where(['activo' => 1 , 'slug' => $request->slug])->first();
    $interior = str_replace(' ','',$this->quitar_tildes($seguro->menu));
    return view('seguros.index', ['interior' => $interior,'seguro'  => $seguro ,'secciones' => $secciones, 'seccion' => $seguro, 'menu' => strtolower($seccion->menu)]);
  }

  public function quitar_tildes($cadena) {
        $no_permitidas= array ("á","é","í","ó","ú","Á","É","Í","Ó","Ú","ñ","À","Ã","Ì","Ò","Ù","Ã™","Ã ","Ã¨","Ã¬","Ã²","Ã¹","ç","Ç","Ã¢","ê","Ã®","Ã´","Ã»","Ã‚","ÃŠ","ÃŽ","Ã”","Ã›","ü","Ã¶","Ã–","Ã¯","Ã¤","«","Ò","Ã","Ã„","Ã‹");
        $permitidas= array ("a","e","i","o","u","A","E","I","O","U","n","N","A","E","I","O","U","a","e","i","o","u","c","C","a","e","i","o","u","A","E","I","O","U","u","o","O","i","a","e","U","I","A","E");
        $texto = str_replace($no_permitidas, $permitidas ,$cadena);
    return $texto;
}


  public function sendComentario(ComentarioRequest $request){
    $comentario = new Comentario;
    $comentario->nombre = $request->input('txtNombre');
    $comentario->email = $request->input('txtEmail');
    $comentario->telefono = $request->input('txtTelefono');
    $comentario->comentario = $request->input('txtComentario');

    if($comentario->save()){
      // enviamos notificacion de email
      // Mail::to(setting('site.correo'))->send(new MensajeMail($comentario));
      // enviamos respuesta al cliente
      return response(['msg'=>'Tu comentario ha sido enviado.']);
    }
    return response(['error'=>'Error al enviar tu mensaje']);
  }

}
