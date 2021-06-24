function challengeOne() {
  let form = document.querySelector("form");
  form.addEventListener("submit", function (event) {
    event.preventDefault();
    let name = form.name.value;
    let language = form.language.value;
    let cohort = form.cohort.value;
    let output = document.querySelector("#output")
    output.innerHTML = `Hello ${name}, hope you are enjoying learning about ${language} in ${cohort}` 
  });
}

function challengeTwo() {
  let button = document.querySelector("#change-theme");
  button.addEventListener("click", function (event) {
    let column = document.querySelector("#challenge-two");
    column.classList.toggle("darkmode");
    if (button.innerHTML == "Dark Mode") {
      button.innerHTML = "Light Mode";
    } else {
      button.innerHTML = "Dark Mode";
    }
  });
}

function challengeThree() {
  document.addEventListener(
    "dragstart",
    function (event) {
      dragged = event.target;
    },
    false
  );

  // document.addEventListener("dragend", function (event) {
  // if (event.target === document.getElementById("to")){
  //   dragged.background.toggle = "green"
  //   console.log("here")
  //   }
  // }, false);

  document.addEventListener(
    "dragover",
    function (event) {
      event.preventDefault();
    },
    false
  );

  // document.addEventListener(
  //   "dragenter",
  //   function (event) {
  //     if (event.target.className == "drag") {
  //       event.target.style.background = "purple";
  //     }
  //   },
  //   false
  // );

  document.addEventListener(
    "dragleave",
    function (event) {
      // reset background of potential drop target when the draggable element leaves it
      if (event.target.className == "dropzone") {
        event.target.style.background = "";
      }
    },
    false
  );

  document.addEventListener(
    "drop",
    function (event) {
      // prevent default action (open as link for some elements)
      event.preventDefault();
      // move dragged elem to the selected drop target
      if (event.target.className == "drag") {
        event.target.style.background = "";
        dragged.parentNode.removeChild(dragged);
        event.target.appendChild(dragged);
      }
      if (event.target === document.getElementById("to")) {
        dragged.style.background = "green";
        console.log(dragged);
      } else {
        dragged.style.background = "";
        console.log(dragged);
      }
    },
    false
  );
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
