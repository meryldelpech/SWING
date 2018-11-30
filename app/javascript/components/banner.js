import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typedInput = document.getElementById('banner-typed-text');
  if (typedInput) {
    new Typed('#banner-typed-text', {
      strings: ["<h1> for YOUR corporate cocktail <br> THE Trumpetist </h1>", "THE Drumer <br> for YOUR Wedding", "THE Mouse <br> for YOUR Cat"],
      typeSpeed: 5,
      loop: true
    });
  }
};

export { loadDynamicBannerText };
