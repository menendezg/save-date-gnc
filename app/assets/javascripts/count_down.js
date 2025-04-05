// var countDownDate = new Date("April 05, 2025 00:00:00").getTime();
// var countDownCall = setInterval(function () {
//   var now = new Date().getTime();
//   var distance = countDownDate - now;
//   var days = Math.floor(distance / (1000 * 60 * 60 * 24));
//   var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
//   var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
//   var seconds = Math.floor((distance % (1000 * 60)) / 1000);
//   // document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
//   // + minutes + "m " + seconds + "s ";
//   document.getElementById("days").innerHTML = days + " Dias"
//   document.getElementById("hours").innerHTML = hours + ":"
//   document.getElementById("minutes").innerHTML = minutes + ":"
//   document.getElementById("seconds").innerHTML = seconds

//   if (distance < 0) {
//     clearInterval(countdownFunction);
//     document.getElementById("countdown").innerHTML = "EXPIRED";
//   }
// }, 1000)



document.addEventListener('DOMContentLoaded', () => {
  const carousel = document.getElementById('carousel');
  const slides = carousel.children;
  const indicators = document.querySelectorAll('.indicator');
  let currentIndex = 0;

  function updateCarousel() {
    // Move the carousel
    carousel.style.transform = `translateX(-${currentIndex * 100}%)`;

    // Update indicators
    indicators.forEach((indicator, index) => {
      indicator.classList.toggle('bg-gray-800', index === currentIndex);
      indicator.classList.toggle('bg-gray-300', index !== currentIndex);
    });
  }

  function nextSlide() {
    currentIndex = (currentIndex + 1) % slides.length;
    updateCarousel();
  }

  // Start automatic transition
  setInterval(nextSlide, 3000); // Change slide every 3 seconds

  // Initialize the carousel
  updateCarousel();

});

function openModal(imageSrc) {
  document.getElementById('modalImage').src = imageSrc;
  document.getElementById('imageModal').style.display = 'flex';
}

function closeModal() {
  document.getElementById('imageModal').style.display = 'none';
}


