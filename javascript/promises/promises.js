let x = 5;
let y = 'string';

const newPromise = new Promise((resolve, reject) => {
  const answer = x + y;

  if (isNaN(answer)) {
    reject("WRONG");
  }

  resolve(answer);
});

// If executes properly run resolve
// Else run reject

// 3 states:
//  Pending
//  Fulfilled
//  Rejected

console.log

newPromise.then(
  (data) => {
    console.log(data);
  },
  (err) => {
    console.log(err);
  }
);
