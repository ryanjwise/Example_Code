class Animal {
  constructor(name) {
    this.name = name
  }
  speak() {
    return `My name is ${this.name}`
  }
}

class Dog extends Animal {
  constructor(name, breed) {
    super(name)
    this.breed = breed
  }
  speak() {
    return `Woof! ${super.speak()} I'm a ${this.breed}`
  }
}

let animal = new Animal("Ted")
console.log(animal.speak())
let doggo = new Dog("Ted", "Border Collie")
console.log(doggo.speak())
