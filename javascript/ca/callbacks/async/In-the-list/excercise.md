# Is it in the list?

The function checkList is already defined and ready to be passed a callback. The `checkList` function calls an asynchronous function - `readFile` - to read the names from a file. When the file read is complete, the findName callback function will be executed, and it will be passed three parameters:

- `error`, `data` - these two parameters come from the call to `readFile`, and are passed on to the callback function
- `name` - this is the name passed to `checkList` to be found

Finish coding the `findName` function so that when we call `checkList` with a name and `findName` it will log a message indicating if the name is in the list. 

Examples: 

`checkList('alex', findName) `

Since 'alex' is in the list, findName should log the following message:

`alex is in the list`

In this example:

`checkList('pikachu', findName)`

Since 'pikachu' is not in the list, findName should log the following message:

`pikachu is not in the list`

Note that the tests will expect that you log either `"<name> is in the list"` or `"<name> is not in the list"`, where `<name>` is the first parameter passed to `checkList`.