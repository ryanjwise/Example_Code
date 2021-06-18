function challengeOne() {
  let button = document.querySelector("#challenge-one");
  button.addEventListener("click", () => {
    console.log("Hello World");
  });
}

function challengeTwo() {
  let button = document.querySelector("#challenge-two");
  button.addEventListener("click", () => {
    let ul = document.querySelector("ul");
    let li = document.createElement("li");
    li.innerHTML = "New List Item";
    ul.appendChild(li);
  });
}

function challengeThree() {
  const colours = [
    "rgb(238, 130, 238)",
    "rgb(75, 0, 130)",
    "rgb(0, 0, 255)",
    "rgb(0, 128, 0)",
    "rgb(255, 255, 0)",
    "rgb(255, 165, 0)",
    "rgb(255, 0, 0)",
  ];
  let button = document.querySelector("#challenge-three");
  button.addEventListener("click", () => {
    let column = document.querySelector("#rainbow");
    let currentColour = window
      .getComputedStyle(column)
      .getPropertyValue("background-color");
      console.log(currentColour);
    let currentPosition = colours.indexOf(`${currentColour}`);
    column.style.backgroundColor = colours[(currentPosition+1) % colours.length];
  });
}

function activity() {
  challengeOne();
  challengeTwo();
  challengeThree();
}

try {
  module.exports = {
    challengeOne,
    challengeTwo,
    challengeThree,
  };
} catch {}
