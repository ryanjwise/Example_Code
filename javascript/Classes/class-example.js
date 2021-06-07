class Dog {
  allWalks = [];
  distanceWalked = 0;

  constructor(name, breed) {
    this.name = name;
    this.breed = breed;
  }
  speak() {
    console.log(`Woof! My name is ${this.name}`);
  }
  walk(location, distance) {
    this.allWalks.push({ location: location, distance: distance });
    this.distanceWalked += distance;
  }
  displayWalks() {
    for (let walk of this.allWalks) {
      console.log(`${walk.location}, ${walk.distance}km`);
    }
  }
  totalDistance() {
    console.log(`${this.name} has walked ${this.distanceWalked}km`);
  }
}

let spike = new Dog("Spike", "Collie");
spike.speak();

spike.totalDistance();
spike.displayWalks();

console.log("------");

spike.walk("Park", 5);
spike.walk("Beach", 12);

spike.speak();
spike.totalDistance();
spike.displayWalks();