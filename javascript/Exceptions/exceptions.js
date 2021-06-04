try {
  // throw 'this is an error'

} catch (e) {
  console.log(`Error: ${e}`)
} finally {
  console.log('finally!')
}

// If an error is caught it will perform the catch action, once teh try block is finished it will then run the finally block