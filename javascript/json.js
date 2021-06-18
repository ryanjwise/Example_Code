const jsonData = require('./data.json') //Bring in json file if available

const jsonString = '{"a": 1, "b": 2}';

const jsonObject = JSON.parse(jsonString);

console.log(jsonObject.b);

const jsonStringAgain = JSON.stringify(jsonObject)

console.log(jsonString);
console.log(jsonStringAgain);