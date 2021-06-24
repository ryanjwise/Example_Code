# Removing event listeners


## Activity:

In the scaffold code, there are 2 columns each with its own respective challenge. The html is complete and does not need to be changed to complete each challenge.

## Challenge 1:

In the left most column, there are three buttons. Each that increment the <p> below them by 5, 10 and 15 respectively. Previously, we have not been passing any arguments to our event listeners but now each different button needs to increment the <p> by its specific amount. To complete this challenge, you will need to find out how to pass an argument to a callback function, in this case the provided changeValue function.

## Challenge 2:

In the right most column, there is a setup similar to the first challenge. There are three buttons, but the HTML for them is a little different. In this case the increment and decrement both have a value attribute which means that you can extract this through event.target, you won't need to pass any arguments to the provided changeValue function

The increment and decrement buttons should both affect the text of the <p> but when the stop button is pressed it should remove the event listeners on these buttons.