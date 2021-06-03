function loopOverArray(directions) {
  let dirs = {}
  for(let direction of directions){
      if (dirs[direction]){
          dirs[direction]++
      } else {
          dirs[direction] = 1
      }
  }
  return dirs
}

function loopOverObject(object) {
    for(let key in object){
        console.log(`Key: ${key}; Value: ${object[key]}`)
    }
}

function findUser(users, username, password) {
  let match = {};
  let found = false;
  for(let user of users){
      if (username == user.username) {
          console.log("Username match")
          if (password == user["password"]) {
              console.log("password match")
              match = user;
              found = true;
              break;
          }
      }
  }
  return (found) ? match : false
}

let users = [
  {
      username: "John",
      password: "password123",
      role: "public"
  }, {
      username: "xXxSn1p3rK1lLaxXx",
      password: "newbDestroyer",
      role: "public"
  }, {
      username: "admin",
      password: "admin",
      role: "admin"
  }
]
console.log(findUser(users, "xXxSn1p3rK1lLaxXx", "newbDestroyer"))
console.log(loopOverArray(["n", "s", "e", "e"]))
console.log(loopOverObject({foo: "bar", ding: "dong"}))