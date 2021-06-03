// Comments

// Single line comments with //

/*
  Multiline 
  comments 
*/

// Variables

// global scope
var myVar;

// local/block scoped
const myConst;

let myLet;

const newConst = "hello";

let two = 'hello';

{
  var one = 'hello';
  const three = 'hello';
  console.log(two);
};

console.log(one);
console.log(three);

// printing to screen/terminal

console.log("hello");

// browser functions

alert("hello");
prompt("Enter something");

// Short circuit logic

let a = false || 1;

let b = false && 1;

// String

'js string'
"js string"

`hello ${5 + 5}`

// Numbers

const myNum = 3;
const myOtherNum = 0.5;

// Boolean

true 
false

// Falsy

false
null
NaN
0
undefined
""

// Data structures

// Objects

let myObject1 = {};

let myObject2 = new Object();

// Array

const myArray = [];

const myArray2 = ["daniel", 2, true];

myArray2[0];

// functions

function myFunc(){

};

const myAnonFunc = function(a,b){
  console.log(a,b);
};

myAnonFunc(1,2);

const myArrowFunc = () => {
  console.log(a,b);
}

// Control structures

// Selection / conditional flow

if(true){
  console.log("TRU!");
} else if(false) {
  console.log("NOT TRU");
}else {
  console.log("KINDA TRU");
};

// switch

switch(something){
  case 1:{
    console.log(1);
  }
    break;
  case 2:
    console.log(2);
    break; 
  default:
    console.log("Default case")
}

// Ternary operators

let ternOp = true ? "hello" : "goodbye";

// Control structures loops/Iterative

// While

while(true){
  console.log('money');
};

// Do while
do{
  console.log('money')
}while(true);

// For

for(let i = 1; i <= 5; i++){
  console.log(i);
}

let students = ['Ananda', 'Ryan', 'Jackie'];

for(let student of students){
  console.log('Hello ' + student);
}

const numbers = {
  one: 1,
  two: 2,
  three: 3
}

for(let num in numbers){
  console.log(num);
}

// forEach

const anotherArray = [1,2,3,4,5]

anotherArray.forEach(element => {
  console.log(element);
});

// Rest and spread

function listNumbers(num1, num2, ...otherNum){
  console.log('Number1:' + num1);
  console.log('Number2:' + num2);
  for(let num of otherNum){
    console.log(num);
  }
}

const students = ['Ananda', 'Ryan', 'Jackie','Karen', 'Joanna'];

let [ananda, ryan, ...otherStudents] = students;

console.log(ananda);
console.log(ryan);
console.log(otherStudents);

// Error handling

try{
  console.log('start of error handling')
  // throw new CustomError('this is a custom error');
  console.log('End of error handling')
}catch(error){
  console.log(error.message);
}finally{
  console.log('finally')
}

function divideNumbers(num1, num2){
  let answer;
  try{
    answer = num1 / num2;
    if(isNaN(answer) || answer === Infinity){
      throw new Error('this is a error')
    }
    return answer
  }catch(error){
    console.log(error.message);
    return false;
  }finally{
    // return 'ok';
  }
}

console.log(divideNumbers(1,0));
