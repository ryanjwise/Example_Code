# Adding event listeners

## Activity:

In the scaffold code there are columns, each with their own button. Each column/button pair belongs to its own challenge. 

## Challenge 1:

In the left most column, each time the button is clicked it should log "Hello World" to the console.

## Challenge 2: 

In the middle column, there is an <ul>. Each time the button is pressed it should create an append a new <li>. Each list item will have the text "New List Item"

## Challenge 3:

In the right most column which has an id of 'rainbow' and begins with a background colour of violet (rgb(238, 130, 238)). With each press of the button the background colour should cycle through each of the colours in the rainbow, these colours are in the array provided in the challengeThree function.

To properly achieve this, you will need to capture the current background colour, find that index in the array and set the new background colour to be the next position in the array.

Once the background colour gets the final position, red; the next button press will cycle back to the original violet colour.