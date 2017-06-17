var fancyThings = document.getElementsByClassName("fancy");
var i;
for (i = 0; i < fancyThings.length; i++) {
    fancyThings[i].style.color = "green";
}

var colorsPhoto = document.getElementById("colors-photo")

function changePhoto(){
  colorsPhoto.src="kittehs.jpeg";
}

colorsPhoto.addEventListener("click",changePhoto);