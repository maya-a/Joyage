
const redirectPage = () => {
  const bookButtons = document.querySelectorAll("#book");

  bookButtons.forEach((button) => {
    button.addEventListener("click", (event) => {
      event.preventDefault();
      window.open("http://skyscanner.com");
      window.location.pathname = "thankyou";
    });
  })
}

redirectPage();
