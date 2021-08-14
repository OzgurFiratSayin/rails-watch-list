import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  
  new Typed('#banner-typed-text', {
    strings: ["Welcome to Your Watchlist!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };