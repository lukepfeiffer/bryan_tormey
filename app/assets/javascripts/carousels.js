$(document).ready(function() {
  $('.scroller').slick({
    infinite: true,
    speed: 1000,
    autoplay: true,
    autoplaySpeed: 5000,
    arrows: false,
    focusOnSelect: false,
    slidesToScroll: 1
  });

  $(".scroller").click(function(e){
    var pWidth = $(this).innerWidth(); //use .outerWidth() if you want borders
    var pOffset = $(this).offset();
    var x = e.pageX - pOffset.left;
    if(pWidth/2 > x) {
      $(".scroller").slick("slickPrev");
    } else {
      $(".scroller").slick("slickNext");
    }
  });

  $(document).keydown(function(event){
    switch(event.which){
      // Left arrow
      case 37:
        $(".scroller").slick("slickPrev");
      break;

      // Right arrow
      case 39:
        $(".scroller").slick("slickNext");
      break;
    }
  });
});
