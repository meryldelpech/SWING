import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Instantanly book an artist", "For a successful event"],
    typeSpeed: 40,
    loop: true
  });
};

export { loadDynamicBannerText };
