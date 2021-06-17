const button = document.querySelector("#button-colour");
console.log(button);

function randomColour() {
  return Math.floor(Math.random() * 255);
}

button.addEventListener("click", () => {
  const newColor = `rgb(${randomColour()},${randomColour()},${randomColour()})`;
  button.innerHTML = newColour;
  document.body.style.background = newColor;
});
