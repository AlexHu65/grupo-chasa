<!doctype html>
<html lang="en">
<head>
  <meta name="google-site-verification" content="{{setting('site.google-site-verification')}}" />
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="Description" content="{{setting('site.description')}}">
  <meta name="keywords" content="{{ setting('site.keywords')}}">
  <meta name="author" content="Difraxion">
  <meta name="robots" content="all">
  <meta name="geo.placename" content="México">
  <meta property="og:image:alt" content="{{setting('site.title')}}">
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <meta property="og:type" content="website">
  <meta property="og:title" content="{{setting('site.title')}}">
  <meta property="og:description" content="{{setting('site.description')}}">
  <meta property="og:image" content="{{asset('storage/' . setting('site.logo'))}}">
  <meta property="og:image:alt" content="{{setting('site.title')}}">
  <meta property="og:site_name" content="{{setting('site.nombre')}}">
  <meta property="og:url" content="{{setting('site.url')}}">
  @include('partials.assets')
  <script src="https://kit.fontawesome.com/bb6382dfae.js" crossorigin="anonymous"></script>
  <link rel='shortcut icon' type='image/x-icon' href='{{asset('images/favicon.png')}}'/>
  <title> {{setting('site.title')}} - @yield('title') {{ setting('site.keywords')}}</title>
    <!--
      Este sitio ha sido desarrollado por Difraxion Group.
      Tel. +52 01 (477) 198 09 65
      E-mail: ventas@reed.com.mx
      www.difraxion.com
      León, Guanajuato
  -->
  <!-- analytics de google -->
  <script async src="https://www.googletagmanager.com/gtag/js?id={{setting('site.google_analytics_tracking_id')}}"></script>
  <script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', '{{setting('site.google_analytics_tracking_id')}}');
</script>
</head>
<body>
  <div id="app">
    <header id="header">
      @include('partials.menu')
    </header>
    @yield('content')
    <footer>
      @include('partials.footer')
    </footer>
    @include('partials.scripts')
</div>
</body>
</html>
