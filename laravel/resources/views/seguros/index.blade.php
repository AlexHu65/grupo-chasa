@extends('master')
@section('title', $seccion->nombre)
@section('content')

<!-- banner -->
@include('seccion.banner')
<!--head-->
@include('seguros.head')
<!-- content-->
@include('seguros.interior.' . strtolower($interior))

@endsection
