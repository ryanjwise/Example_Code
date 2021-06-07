function Person(name, age, location) {
  this.name = name
  this.age = age
  this.location = location
}

Person.prototype.sayHello = function() {
  return `Hi, my name is ${this.name}`
}

function Student(name, age, location, id) {
  this.studentID = id
  Person.call(this, name, age, location) // object must be sent in the call to super (this)
}

// Explicitly call the prototypes belonging to the super
Student.prototype = Object.create(Person.prototype)
Student.prototype.study = function() {
  return "I'm learning more every day!"
}

function Educator(name, age, location, wage) {
  this.wage = wage
  Person.call(this, name, age, location) // object must be sent in the call to super (this)
}

// Explicitly call the prototypes belonging to the super
Educator.prototype = Object.create(Person.prototype)
Educator.prototype.work = function() {
  return "I have the best job in the world!"
}


let student = new Student("Mick", 28, "Sydney", 654)
let educator = new Educator("Larry", 40, "Sydney", 1000000000)

console.log(student.sayHello())
console.log(educator.sayHello())
console.log(student.study())
console.log(educator.work())