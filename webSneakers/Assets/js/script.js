var slideIndex = 1;
var checkP= 4;

///*slide */
//var slideIndex = 0;

//function showSlides() {
//    var i;
//    var slides = document.getElementsByClassName("mySlides");
//    var dots = document.getElementsByClassName("dot");
//    for (i = 0; i < slides.length; i++) {
//        slides[i].style.display = "none";
//    }
//    slideIndex++;
//    if (slideIndex > slides.length) { slideIndex = 1 }
//    for (i = 0; i < dots.length; i++) {
//        dots[i].className = dots[i].className.replace(" active", "");
//    }
//    slides[slideIndex - 1].style.display = "block";
//    dots[slideIndex - 1].className += " active";
//    setTimeout(showSlides, 2000); // Change image every 2 seconds
//}

//function toggleNavbar() {
//    let navbar = document.getElementsByClassName("navbar-mobile")[0];
//    let overplay = document.getElementsByClassName("overplay")[0];

//    navbar.classList.toggle("active");
//    overplay.classList.toggle("active");
//}
//window.onload = function () {
//    showSlides();
//    setTimeout(plusSlides(1), 3000);

//}


//function toggleNavbar() {
//  let navbar = document.getElementsByClassName("navbar-mobile")[0];
//  let overplay = document.getElementsByClassName("overplay")[0];

//  navbar.classList.toggle("active");
//  overplay.classList.toggle("active");
//}

//slide an nut

window.onload = function(){
    showSlides();
}
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) { slideIndex = 1 }
  if (n < 1) { slideIndex = slides.length }
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }

  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex - 1].style.display = "block";
  dots[slideIndex - 1].className += " active";
}
