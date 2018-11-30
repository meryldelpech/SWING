// import "bootstrap";
import '../components/priceAuto';

// console.log('Hello World from Webpacker')
// import { initUpdateNavbarOnScroll } from '../components/navbar';
import "../plugins/flatpickr";


// initUpdateNavbarOnScroll();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

const photoInput = document.getElementById("user_photo")


const talentPhoto = document.getElementById("talent_photo")

if (talentPhoto) {
  talentPhoto.addEventListener("change", event => {
    if (event.target.value !== "") {
      document.getElementById("talent-btn").disabled = false;
    }
  })
}

if (photoInput) {
  photoInput.addEventListener("change", event => {
    if (event.target.value !== "") {
      document.getElementById("signupbtn").disabled = false;
    }
  })
}
