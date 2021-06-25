function generateRandomNumber(limit) {
  console.log("Generating number between " + limit);
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      if (typeof limit !== "number") {
        reject(new Error("Input must be a number"));
      }
      const randomNumber = Math.floor(Math.random() * limit) + 1;
      resolve(randomNumber);
    }, 1000);
  });
}

function doubleNumber(num) {
  return new Promise((resolve, rejections) => {
    if (num < 0) {
      reject(new Error("Can't double negative number with simple math"))
    }
    resolve(num*2)
  })
}

generateRandomNumber(10)
  .then((number) => {
    console.log("The number is " + number);
    return number;
  })
  .then((number) => {
    console.log("Double the number is " + number * 2);
    return 42;
  })
  .then((number) => {
    console.log("The answer is " + number);
  })
  .catch((error) => {
    console.error("Caught error: " + error.message);
  });


  generateRandomNumber(10)
  .then((number) => {
    console.log("The number is " + number);
    return number;
  })
  .then(doubleNumber)
  .then((double) => {
    console.log("Double the number is " + double);
    return 42;
  })
  .catch((error) => {
    console.error("Caught error: " + error.message);
  });
