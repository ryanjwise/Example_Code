function addSuffix(suffix) {
  return function(prefix) {
      return `${prefix}${suffix}`;
  }
}

const makeItNice = addSuffix(", nice to see you")
const addSuper = addSuffix(", that is super")
const addMmkay = addSuffix(", mmkay")

console.log(makeItNice("hello world"))
console.log(addSuper("hello world"))
console.log(addMmkay("hello world"))


function counter(stepValue) {
  let currentValue = 0

  return {
      value: () => currentValue,
      increment: () => currentValue += stepValue,
      decrement: () => currentValue -= stepValue
  }

}


const countByTen = counter(10)
const countByFive = counter(5)
console.log(countByTen.value()) // should print 0
countByTen.increment()
countByTen.increment()
console.log(countByTen.value()) // should print 20
countByTen.decrement()
console.log(countByTen.value()) // should print 10

console.log(countByFive.value()) // should print 0
countByFive.increment()
countByFive.increment()
console.log(countByFive.value()) // should print 10
countByFive.decrement()
console.log(countByFive.value()) // should print 5