const toggleFlights = () => {
  const buttons = document.querySelectorAll("#clickme");
  const flights = document.querySelectorAll("#flights");

  buttons.forEach((button, index) => {
    console.log(index)
    button.addEventListener("click", (event) => {
      flights[index].classList.toggle("d-none");
    });
  });
}

toggleFlights();
