const showNavbar = () => {
  const navbar = document.querySelector(".navbar-lewagon")
  document.addEventListener('scroll', (scroll) => {
    if (window.scrollY >= 80) {
      navbar.style.backgroundColor = "white";
    } else {
      navbar.style.backgroundColor = "";
    };
  })
};

export { showNavbar }
