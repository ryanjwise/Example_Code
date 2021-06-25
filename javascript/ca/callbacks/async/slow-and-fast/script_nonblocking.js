let slowNumber = document.getElementById("slowNumber")
let slowButton = document.getElementById("slowButton")
let fastNumber = document.getElementById("fastNumber")
let fastButton = document.getElementById("fastButton")
let counter = 0
let fastCounter = 0
slowNumber.textContent = counter
fastNumber.textContent = fastCounter

function getSlowCounter() {
	return ++counter
}

function getFastCounter() {
	return ++fastCounter
}

function updateFastCounter() {
	let value = getFastCounter()
	fastNumber.textContent = `${value}`
}

function wait(ms) {
	let start = Date.now(),
		now = start;
	while (now - start < ms) {
		now = Date.now();
	}
}

function updateSlowCounter() {
	let value = getSlowCounter()
	setTimeout(() => {
		return slowNumber.textContent = `${value}`
	},3000)
}

fastButton.addEventListener("click", updateFastCounter)
slowButton.addEventListener("click", updateSlowCounter)
document.getElementById("description").textContent = "NON Blocking counter demo"