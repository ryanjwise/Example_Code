let cookies = document.cookie
console.log(cookies);

document.cookie = "name=Ryan"
document.cookie = "anotherString=Things"

let newExpirey = new Date()
expirey.set = newExpirey
document.cookie = `anotherString=;expires=${new Date().to}`