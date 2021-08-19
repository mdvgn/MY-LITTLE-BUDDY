const moveSearchbar = () => {
  const searchBar = document.querySelector(".product-search")
  if (searchBar) {
  document.addEventListener('scroll', (scroll) => {
    if (window.scrollY >= 80) {
      searchBar.style.position = "fixed";
      searchBar.style.top = "15px";
    } else {
      searchBar.style.position = "";
      searchBar.style.top = "";
    };
  })
  }
};

export { moveSearchbar }
