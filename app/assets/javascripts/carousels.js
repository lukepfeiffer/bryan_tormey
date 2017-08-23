$(document).ready(function() {
  // normal view
  $('.scroller').slick({
    infinite: true,
    speed: 1000,
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: false,
    slidesToScroll: 1
  });

  $(document).keydown(function(event){
    switch(event.which){
      // Left arrow
      case 37:
        debugger
        $(".scroller").slick("slickPrev");
      break;

      // Right arrow
      case 39:
        $(".scroller").slick("slickNext");
      break;
    }
  });
});
