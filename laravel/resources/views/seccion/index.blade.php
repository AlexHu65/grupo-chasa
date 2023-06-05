@extends('master')
@section('title', $seccion->nombre)
@section('content')

<!-- banner -->
@include('seccion.banner')
<!-- head -->
@include('seccion.head')
<!-- seccion info -->
@include('seccion.contenido.' . strtolower($interior))





@endsection
