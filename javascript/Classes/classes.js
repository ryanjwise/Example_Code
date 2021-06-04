class Rectangle {
  constructor(width, height) {
    this.width = width
    this.height = height
  }
  area() {
    return this.height * this.width
  }
}

let rect = new Rectangle(10, 5)