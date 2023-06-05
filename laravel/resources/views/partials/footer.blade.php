<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h4>¿NECESITAS AYUDA?</h4>
                <p><img src="{{url('/')}}/images/mai_icon.png"> {{setting('site.correo')}}</p>
                <p><i class="fas fa-phone-alt"></i> {{setting('site.telefono')}}</p>
                <p>GRUPO CHASA - Todos los derechos reservados.</p>
            </div>
            <div class="col-md-3">
                <h4>VISÍTANOS</h4>
                <p>{{setting('site.principal')}}</p>
            </div>
            <div class="col-md-2 my-auto">
                <a href="{{setting('site.facebook')}}" target="_blank"><i class="fab fa-facebook fa-lg"></i></a>
                <a href="{{setting('site.instagram')}}" target="_blank"><i class="fab fa-instagram fa-lg"></i></a>
            </div>
            <div class="col-md-3 col-sm-3 my-auto">
                <div class="row">
                    <div class="col">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a  href="{{url('/')}}">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a  href="{{url('personas')}}">Personas</a>
                            </li>
                            <li class="nav-item">
                                <a  href="{{url('empresas')}}">Empresas</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{url('nosotros')}}">Nosotros</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="{{url('seguros')}}">Seguros</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{url('agentes')}}">Agentes</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{url('blog')}}">Blog</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col text-right">
                        <i class="fas fa-search"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
