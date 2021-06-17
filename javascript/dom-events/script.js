console.log(document);
console.log(typeof document);
console.log(document.__proto__);

const h1Title = document.createElement("h1");
console.log(h1Title.__proto__);
document.body.prepend(h1Title);

const h1Content = document.createTextNode("Gotta go fast");
console.log(h1Content);

h1Title.appendChild(h1Content);

const orderedList = document.getElementById("student-order");

console.log(orderedList);

// orderedList.style.background = "black"

const listItems = document.getElementsByTagName("li");
document.get;
console.log(listItems);

listItems[2].style.background = "white";

const secondListItem = document.querySelector("#second-item");
secondListItem.innerHTML = "This is the second item";
secondListItem.style.background = "cyan";

const redBackgroundItem = document.querySelectorAll(".red-background");
console.log(redBackgroundItem);
redBackgroundItem[1].style.background = "red";

const newThirdItem = document.createElement("li");
newThirdItem.innerHTML = "New Second Element";

orderedList.insertBefore(newThirdItem, secondListItem);
orderedList.replaceChild(newThirdItem, secondListItem);

function clickOl() {
  console.log("Good Bye");
}

function mouseOverOl(){
  h1Title.innerHTML = "You are mousing over teh OL"
}

h1Title.addEventListener('click', () => {
  h1Title.innerHTML = "Back to Normal"
})

h1Title.removeEventListener('click')