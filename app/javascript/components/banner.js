import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  
  new Typed('#banner-typed-text', {
    strings: ["Hello Princess", "I am not ignoring you :)"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };