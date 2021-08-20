const priceCalculator = () => {
  const rentStart = document.querySelector("#rent_start_date")
  const rentEnd = document.querySelector("#rent_end_date")
  const pricePerHour = parseInt(document.querySelector('#price').dataset.pricePerHour, 10)
  const prout = document.querySelector("#prout")
  if (rentStart) {
    rentEnd.addEventListener('change', (event) => {
      const startDateTime = new Date(rentStart.value).getTime() / (1000 * 60);
      const endDateTime = new Date(rentEnd.value).getTime() / (1000 * 60);
      const calculatedPrice = (endDateTime - startDateTime) / 60 * pricePerHour
      prout.innerText = Math.round(calculatedPrice)
    });
  };
}
export { priceCalculator }
