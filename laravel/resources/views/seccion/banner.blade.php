<div class="owl-carousel owl-theme">
      <div class="item">
      <img class="d-block w-100" src="{{url('/')}}/storage/{{$seccion->banner}}" alt="{{$seccion->nombre}}">
         <div class="texto_carusel">
            <h1>{{$seccion->nombre}}</h1>
            <h4>{!!$seccion->bullet!!}</h4>
         </div>
      </div>
</div>
<script type="text/javascript">
  $('.owl-carousel').owlCarousel({
    margin:10,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
});
</script>
