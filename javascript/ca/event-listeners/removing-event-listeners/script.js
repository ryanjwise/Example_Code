function challengeOne() {
  function changeValue(value) {
    // This is the callback function for the event handler
    const counter = document.querySelector("#counter-one");
    // It should increment the value in the <p> by value
    counter.innerHTML = parseInt(counter.innerHTML) + value;
  }
  // Challenge 1: Add an event listener to each button that invokes
  const buttonFive = document.querySelector("#five");
  const buttonTen = document.querySelector("#ten");
  const buttonFifteen = document.querySelector("#fifteen");
  // the changeValue handler function with the correct value for the button
  buttonFive.addEventListener("click", changeValue.bind(event, 5));
  buttonTen.addEventListener("click", changeValue.bind(event, 10));
  buttonFifteen.addEventListener("click", changeValue.bind(event, 15));
}

function challengeTwo() {
  function changeValue(event) {
    const counter = document.querySelector("#counter-two");
    const value = event.target.getAttribute("value");
    counter.innerHTML = parseInt(counter.innerHTML) + parseInt(value);
    // This is the callback function for the event handler
    // It should either increment the value, decrement the value,
    // or stop changing the value in the <p> based on the button that is clicked
  }
  // Challenge 2: Use the event target to determine the value on the button
  const buttons = document.querySelectorAll(".challenge-two");
  const buttonStop = document.querySelector("#stop");
  // console.log(buttons)
  buttons.forEach((btn) => {
    btn.addEventListener("click", changeValue);
  });

  buttonStop.addEventListener("click", () => {
    buttons.forEach((btn) => {
      btn.removeEventListener("click", changeValue);
    });
    buttonStop.removeEventListener("click", () => {});
  });
  // that triggered the click event. Add that value to the current value
  // in the paragraph and update what is shown on the page.
  // When the Stop button is clicked, the event handlers should all be removed.
}

function activity() {
  challengeOne();
  challengeTwo();
}

try {
  module.exports = {
    challengeOne,
    challengeTwo,
  };
} catch {}
