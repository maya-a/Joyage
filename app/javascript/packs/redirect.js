
const redirectPage = () => {
  const bookButtons = document.querySelectorAll("#book");
  const destinationCity = document.querySelector(".trip-name").innerText;

  bookButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      window.open("http://skyscanner.com");
      window.location.href = `/thankyou?destination_city=${destinationCity}`;
    });
  });
}

redirectPage();
