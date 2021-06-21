# Accessing values inside event listeners

## Activity:

In the scaffold code, there are 3 columns each with its own respective challenge. The html is complete and does not need to be changed to complete each challenge.

## Challenge 1:

In the left most column, there are three inputs for your name, the language you are currently learning, and cohort. After typing data in and submitting the form the value from each input is interpolated into the <p> underneath the form into the following format:

"Hello `name`, hope you are enjoying learning about `language` in `cohort`
The difficulty in this, is that each input is a child of parent <div>, which is another child of the <form>. Once you can extract the value of each input when the form is submitted you can easily change the text of the empty <p>. 

Remember that there is a difference between a button click and a form submit. Form submits can be executed with the enter key being pressed while an onClick function must be clicked. To complete this challenge you should have an event listener on form submit.

## Challenge 2: 

In the middle column, we are refactoring our previous darkmode/lightmode challenge. Now that we can change the value of an element, we don't need two buttons. We can have one button with text that will change to "Light Mode" when it's dark and "Dark Mode" when it's light.

Each time the button is pressed, the column should change themes and the button text will change as well.

## Challenge 3:

This challenge is more advanced but implementing your own drag and drop is very rewarding. A great resource for this challenge is MDN's content on DragEvents and  DataTransfer. 

There is one red div that is the only draggable element. There are ten orange divs that are the "receivers", onto which the red div can be dragged. The difficulty here is that there are so many of the orange elements that need event listeners. Instead of doing each manually, find out how to iterate over the collection of orange divs.

The red div can be dropped into any of the orange divs, but when its dropped onto the last one it should change from red to green. If it is placed back on one of the other orange divs it should return back to its initial red colour.

This challenge won't be tested. It is up to you to confirm if your drag drop is working as expected, but it should resemble this:

- https://youtu.be/sAUcWmUn_K4