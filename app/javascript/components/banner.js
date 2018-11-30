import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typedInput = document.getElementById('banner-typed-text');
  if (typedInput) {
    new Typed('#banner-typed-text', {
      strings: ["THE trumpetist for YOUR corporate cocktail", "THE drumer for YOUR wedding", "THE saxophonist for YOUR festival"],
      typeSpeed: 45,
      loop: true
    });
  }
};

export { loadDynamicBannerText };
