function randomLocation(length) {
  return `${Math.floor(Math.random() * length)}px`;
}

function init() {
  const runner = document.getElementById("runner");
  const runnerWidth = parseInt(runner.style.width);
  const width = document.body.clientWidth - runnerWidth;
  const height = document.body.clientHeight - runnerWidth;
  runner.addEventListener("mouseover", () => {
    runner.style.top = randomLocation(height);
    runner.style.left = randomLocation(width);
  });
}

window.onload = init();
