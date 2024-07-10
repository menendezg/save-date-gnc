var countDownDate = new Date("April 05, 2025 00:00:00").getTime();
var countDownCall = setInterval(function(){
    var now = new Date().getTime();
    var distance  = countDownDate - now;
    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    // document.getElementById("countdown").innerHTML = days + "d " + hours + "h "
    // + minutes + "m " + seconds + "s ";
    document.getElementById("days").innerHTML = days + " Dias"
    document.getElementById("hours").innerHTML = hours + ":"
    document.getElementById("minutes").innerHTML = minutes + ":"
    document.getElementById("seconds").innerHTML = seconds

    if (distance < 0) {
        clearInterval(countdownFunction);
        document.getElementById("countdown").innerHTML = "EXPIRED";
    }
}, 1000)