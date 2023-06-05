<section class="menu">
    <div class="head_blue">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3">
                    <img src="{{url('/')}}/images/mai_icon.png"> {{setting('site.correo')}}
                </div>
                <div class="col-md-2 col-sm-2">
                    <i class="fas fa-phone-alt"></i> {{setting('site.telefono')}}
                </div>
                <div class="col-md-7 col-sm-7  text-right">
                    <i class="fas fa-search"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container menu">
        <nav class="navbar navbar-expand-md navbar-light text-center">
            <button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
                <a href="{{url('/')}}" class="navbar-brand mr-auto mt-2 mt-lg-0"><img src="{{url('/')}}/storage/{{setting('site.logo')}}" alt="Grupochasa Logo"></a>
                <ul class="navbar-nav my-2 my-lg-0">
                    <li class="nav-item">
                        <a class="nav-link {{(strtolower($menu == 'Inicio') ? 'active': '')}}" href="{{url('/')}}">Inicio</a>
                    </li>
                    @foreach($secciones as $seccion)
                    <li class="nav-item">
                    <a class="nav-link {{(strtolower($seccion->menu) == $menu) ? 'active': ''}}" href="{{route('secciones.seguros' , ['seccion' => $seccion->slug])}}">{{$seccion->menu}}</a>
                    @if($seccion->seguros->count() > 0)
                    <div uk-dropdown>
                        <ul class="uk-nav uk-dropdown-nav">
                            @foreach($seccion->seguros as $seguro)
                            <li class="text-left"><a class="text-light" href="{{route('seguros.seguro' , ['seccion' => $seccion->slug , 'slug' => $seguro->slug])}}">{{$seguro->menu}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    @endif
                    </li>

                    @endforeach
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('nosotros')}}">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('agentes')}}">Agentes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{url('blog')}}">Blog</a>
                    </li>
                </ul>
            </div>
            </nav>
    </div>
</section>
