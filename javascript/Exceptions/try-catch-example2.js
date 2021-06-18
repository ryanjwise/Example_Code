class CalculatorError extends Error {
	constructor(name, message) {
		super(message)
		this.name = name
	}
}

const VALID_OPS = ["add", "subtract", "multiply", "divide"]
function validNumber(value) {
	if(typeof value !== 'number')
		throw new CalculatorError("NotANumber", `${value} is not a number`)
	return true
}

function validForDivide(divisor) {
	if (divisor === 0) 
		throw new CalculatorError("DivideByZero", "Dividing by zero is not allowed")
	return true
}

// For invalid input - catch the errors and print the error name and message
function calculate(a,b,op) {
	try {
		validNumber(a)
		validNumber(b)
		switch(op) {
			case "add": return a+b
			case "subtract": return a-b
			case "multiply": return a*b
			case "divide" :
				validForDivide(b)
				return a/b
			default:
				throw new CalculatorError("InvalidOperation", `${op} is not a valid operation. Valid operations are: ${VALID_OPS}`)
		} 
	} catch(e) {
			console.log(`${e.name}: ${e.message}`)
	}
}

console.log(calculate(1,2,"add"))
console.log(calculate('1',2,"add"))
console.log(calculate(1,2,"subtract"))
console.log(calculate(1,2,"plus"))
console.log(calculate(1,2,"multiply"))
console.log(calculate(1,0,"divide"))
console.log(calculate(1,2,"divide"))

module.exports = {calculate}