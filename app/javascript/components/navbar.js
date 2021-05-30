const initUpdateNavbarOnScroll = () => {
    const navbar = document.querySelector('.navbar');
    if (navbar) {
      let banner = undefined;
      document.querySelector('.banner-main') ? banner = document.querySelector('.banner-main') : banner = document.querySelector('.banner-list')
      let bannerHeight = banner.offsetHeight;
      window.addEventListener('scroll', () => {
        if (window.scrollY >= bannerHeight) {
          navbar.classList.add('navbar-grey');
        } else {
          navbar.classList.remove('navbar-grey');
        }
      });
    }
  }
  
  export { initUpdateNavbarOnScroll };
