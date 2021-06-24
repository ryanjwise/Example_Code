// Use anonymous functions in each funcion implementation below

// getTheNumbers
//   Parameter: list
//      An array of different kinds of data (numbers, strings, etc)
//   Returns an array that only contains the numbers from list
// Use filter and an anonmous callback to return all the numbers in list
function getTheNumbers(list) {
	return list.filter(el => {
		return (typeof(el) === 'number')
	})
}

// shortestToLongest
// Parameter: list
//		An array of strings or other arrays of varying lengths
// Returns the array with values sorted by length, shortest to longest
// Use sort and anonymous callback to return the elements in list ordered by length
function shortestToLongest(list) {
	return list.sort((val1, val2) => {
		let l1 = val1.length
  		let l2 = val2.length
		if (l1 === l2) {
			return 0
		} else if (l1 > l2){
			return +1
		} else if (l1 < l2){
			return -1
		}
	})
}

// capitaliseFirst
// Parameter: strings
//		An array of strings
// Returns the array with the first word of each string capitalised
// Use map and an anonymous callback to return the strings with the first word of each string capitalised
function capitaliseFirst(strings) {
	return strings.map(string => {
		return string[0].toUpperCase() + string.substring(1) 
	})
}

// For testing with Run
console.log(capitaliseFirst("one day i will rule the world".split(" ")).join(" "))
console.log(capitaliseFirst(["this is the first.", "this is second.", "finally the last one."]))

console.log(shortestToLongest(["different sizes", "with a clever callback function!", "strings of", "can be put in order."]))

console.log(getTheNumbers([45,"3","cats",12,4,{key: "value"},29]))

module.exports = {
	getTheNumbers,
	shortestToLongest,
	capitaliseFirst
}