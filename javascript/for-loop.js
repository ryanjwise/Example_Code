function loopPractice() {
  for (let i=0; i < 10; i++){
      console.log("Hello World")
  }
}

function loopWithCount(number) {
  for (let i=0; i < number; i++){
      console.log("Hello World")
  }
}

function loopWithString(number) {
  let string = ""
  for (let i=0; i <= number; i++){
      string += i
  }
  return string
}