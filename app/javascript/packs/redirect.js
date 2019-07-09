
const redirectPage = () => {
  const bookButtons = document.querySelectorAll("#book");
  const destinationCity = document.querySelector(".trip-name").innerText;

  bookButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      window.location.href = `/thankyou?destination_city=${destinationCity}`;
      window.open("http://skyscanner.com");
    });
  });
}

redirectPage();
