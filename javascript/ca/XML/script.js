const request = new XMLHttpRequest();
request.open("Get", "http://api.chucknorris.io./jokes/random");
request.onload = () => {
  const data = JSON.parse(request.response);
  console.log(request.response.value);
};
request.send();

//Fetch

const fetchRequest = fetch("http://api.chucknorris.io./jokes/random");
fetchRequest.then((response) =>
  console.log(response.json()).then((data) => console.log(data.value))
  .catch( err => console.log(err))
);
// console.log(fetchRequest)

const content = document.querySelector('#content')
const moreJokes = fetch('https://icanhazdadjoke.com', {
  headers: {
    "Accept": "application/json"
  }
})
  .then(response => response.text())
  .then( data => content.innerHTML = data)