@extends('master')
@section('title', 'Inicio / Home')
@section('content')

<!-- banner -->
@include('home.secciones.banner')
<!-- projectos -->
@include('home.secciones.proyectos')
<!-- about me -->
@include('home.secciones.about')
<!-- servicios -->
@include('home.secciones.servicios')


<div class="container fondo_blog text-center">
    <h4>Vive tranquilo y seguro</h4>
    <p class="text-center">Sigue los <strong>temas más actuales</strong> sobre el mundo de los seguros</p>
    <p class="text-center"><a href="{{url('/')}}"><span class="bg_txtb">BLOG</span></a></p>
</div>
@endsection
