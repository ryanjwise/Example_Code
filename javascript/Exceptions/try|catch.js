function subtract(num1, num2) {
  let answer

  try {
    answer = num1 - num2
    if (isNaN(answer)) {
      throw "Invalid Input"
    }
    return answer
  } catch (e) {
    console.log(`Error: ${e}`)
  }
}

console.log(subtract(20, "hello"))