
const redirectPage = () => {
  const bookButtons = document.querySelectorAll("#book");
  const destinationCity = document.querySelector(".trip-name").innerText;
  // const destinationCode = document.querySelector(".destination-code").downcase;
  // const returnCode = document.querySelector(".return-code").downcase
  // const departureDate = document.querySelector(".departure-date").to_datetime.strftime("%y/%m/%l")
  // const returnDate = document.querySelector(".return-date").to_datetime.strftime("%y/%m/%l")


  bookButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      window.location.href = `/thankyou?destination_city=${destinationCity}`;
      window.open("https://www.skyscanner.co.il/transport/flights/pari/ams/190717/190724/?adults=1&children=0&adultsv2=1&childrenv2=&infants=0&cabinclass=economy&rtn=1&preferdirects=false&outboundaltsenabled=false&inboundaltsenabled=false&ref=home#results");
    });
  });
}

redirectPage();

