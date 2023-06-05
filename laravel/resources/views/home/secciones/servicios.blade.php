<div class="container servicios">
    <div class="row">
        @foreach($servicios as $servicio)
        <div class="col-md-3">
        <img src="{{url('/')}}/storage/{{$servicio->img}}" alt="{{$servicio->nombre}}" width="100%">
            <div class="texto_servicios">
                <h3>{{$servicio->titulo}}</h3>
                <span>Conoce más</span>
            </div>
        </div>
        @endforeach
    </div>
</div>
