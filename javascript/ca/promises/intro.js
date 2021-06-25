function squareNumber(number) {
  return new Promise((resolve, reject) => {
    if (typeof number !== "number") {
      reject(new Error("Input must be a number!"));
    }
    resolve(number * number);
  });
}

// To resolve a successful response, use .then()
squareNumber(5).then((squareNumber) => console.log(squareNumber));
// To resolve an unsuccessful response, use .catch()
squareNumber("5").catch((error) => console.error(error.message));
// These functions can be chained together
squareNumber("5")
  .then((squareNumber) => console.log(squareNumber))
  .catch((error) => console.error(error.message))
  // .finally() will run after either .then() or .catch() has resolved
  .finally(() => console.log("The promise has been resolved"))

console.log("I am synchronous and therefor I will run first")