# Changing Existing Elements

In the scaffold code, there's some changes that need to be made to the styles of this page. Unfortunately we can't edit the HTML directly we need to manipulate the DOM using the script.js file that is being imported and called inside the index.html file. Inside the activity() function, four other functions are being executed. 

Instead of changing the activity() code, you should update the code inside these functions that are being called.

Inside the <head> we have some custom classes with appropriate styles, we'll be applying these to some of our elements and adding inline styles or changing attributes for other elements.

## Challenge 1: Light mode/dark mode
There are two buttons in the header that change to light/dark mode, there is an event listener which is working fine but our function isn't applying the class correctly. We want to apply this class to the body.

Update the changeToDarkMode() and changeToLightMode() functions to add and remove the .darkmode class respectively.

Reminder: The first four lines of the activity() function SHOULD NOT change

## Challenge 2: Square bullets
The list items currently have circles for bullet points, these should be squares. Instead of applying an existing class like you did in the first challenge, update the style on the <ul> directly to have a list style type of "square".

## Challenge 3: Font
All of the text is Times New Roman and quite small, not ideal for the desktop. Directly update the body's styles to cascade the changes down to child elements to: 

have a font family of Arial

change the body's font size to be 28 pixels