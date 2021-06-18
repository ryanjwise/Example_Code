function Person(name, age) {
  this.name = name;
  this.age = age;
  this.awesome = true;
}

let student1 = new Person("Sarah", 24);
let student2 = new Person("John", 30);
console.log(student1); // outputs Person { name: 'Sarah', age: 24, awesome: true }
console.log(student2); // outputs Person { name: 'John', age: 30, awesome: true }

// Adding attributes

Person.country = "Australia";
let student3 = new Person("Sam", 28);

console.log(student2); // outputs Person { name: 'Sam', age: 28, awesome: true }

// Adding to constructor prototype

Person.prototype.country = "Australia"
let student4 = new Person("Tom", 20)

// Our original student
console.log(student1.country); // outputs "Australia"
// Our latest student
console.log(student4.country); // outputs "Australia"

// Functions can also be stored in object constructors, hoever it will store the function for each object instantiated from it:
function Hero(name, level) {
  this.name = name;
  this.level = level;
  this.shout = function() {
    return `My name is ${this.name}!`;
  };
}

let conan = new Hero("Conan", 100);
let batman = new Hero("Batman", 60);

conan.shout();
batman.shout();

// A better way is to add the functions afterwards as a prototype, thus storing the function once and applying it to all objects:
function Villian(name, level) {
  this.name = name;
  this.level = level;
}

Villian.prototype.shout = function() {
  return `I am the evil ${this.name}!`;
};

let joker = new Villian("Joker", 60);
let iceman = new Villian("Iceman", 20);

joker.shout();
iceman.shout();