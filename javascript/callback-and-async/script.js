document.querySelector('#button').addEventListener('click', () => console.log('CALLBACK'))

function callBackExample(x, callback){
  callback(x);
}

callBackExample('Hey', (y) => console.log(y);)