const priceCalculator = () => {
  const rentStart = document.querySelector("#rent_start_date")
  const rentEnd = document.querySelector("#rent_end_date")
  if (rentStart) {
    const prout = document.querySelector("#prout")
    const pricePerHour = parseInt(document.querySelector('#price').dataset.pricePerHour, 10)
    rentEnd.addEventListener('change', (event) => {
      const startDateTime = new Date(rentStart.value).getTime() / (1000 * 60);
      const endDateTime = new Date(rentEnd.value).getTime() / (1000 * 60);
      const calculatedPrice = (endDateTime - startDateTime) / 60 * pricePerHour
      prout.innerText = Math.round(calculatedPrice)
    });
  };
}
export { priceCalculator }
