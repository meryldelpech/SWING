import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["<h1> for YOUR corporate cocktail <br> THE Trumpetist </h1>", "THE Drumer <br> for YOUR Wedding", "THE Mouse <br> for YOUR Cat"],
    typeSpeed: 5,
    loop: true
  });
};

export { loadDynamicBannerText };
