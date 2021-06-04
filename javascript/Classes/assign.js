const student = {
  name: "John",
  course: "none"
}

const FTStudent = {
  name: "FastTrack",
  start: "October"
}

const CAStudent = {
  languages: ["ruby", "javascript"],
  speak: function() {
    console.log("I can do it!")
  }
}

let john = Object.assign(student, FTStudent, CAStudent)

console.log(student)