# Create Group

In this challenge you will use all the tools you've learned in this lesson. 

## Part 1: Study getData

You'll notice that the getData function is done for you. Look at the implementation, and try calling the function with the students.txt file in the scaffold:

`getData(testFile)`

Notice that it returns a Promise. Make sure you understand what's happening, and play with calling it, and handling the resolution or rejection of the Promise it returns in the terminal.

## Part 2: Implement createGroup

This part of the challenge is just a bit of review of exception handling and array processing. The createGroup function is passed an array of strings, and a number that represents the desired group size. It should return an array of random strings from the array that is passed in as an argument of the size given, as long as it is possible.

If the array passed in is empty, and the requested group size is greater than 0, it should throw an error with the message "List is empty. Cannot great a group of size " + size .

If the group size passed in is invalid (it is larger than the array), it should throw an error with the message: "Group too large. Size limited to " + list.length .

## Part 3: Implement getStudentList

This function takes two parameters: file and size , and it returns a Promise that either resolves to a list with length size of random strings from file, or rejects with an error generated when trying to get that list.  You will use the getData , createList, and createGroup functions to accomplish this. The createList function is provided for you and does the utility work of creating an array of strings from a multi-line string (which is read from the file in this challenge). 

Here's a diagram that shows how data can move between these functions in order to implement getStudentList:

data flow through functions
One tricky part of this - and the point of the challenge - is that getStudentList must 

return a Promise that resolves to the list returned by createGroup, or rejects with an error
There is a hint in the scaffold for getStudentList that suggests that using Promise chaining is one way to accomplish this (have a look back at the slide A note about .then())