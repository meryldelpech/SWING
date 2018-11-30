import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["THE trumpetist for YOUR corporate cocktail", "THE drumer for YOUR wedding", "THE saxophonist for YOUR festival"],
    typeSpeed: 45,
    loop: true
  });
};

export { loadDynamicBannerText };
