<div class="owl-carousel owl-theme">
    @foreach($baners as $banner)       
      <div class="item">
         <img class="d-block w-100" src="{{url('/')}}/storage/{{$banner->img}}" alt="First slide">
         <div class="texto_carusel">
            <h1>{{$banner->titulo}}</h1>
            <h4>{{$banner->subtitle}}</h4>
            <span>{{$banner->texto_link}}</span>
         </div>
      </div>  
   @endforeach   
</div>
<script type="text/javascript">
  $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav: true,
    navText: ["<div class='nav-btn prev-slide'></div>", "<div class='nav-btn next-slide'></div>"],
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