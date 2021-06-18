# Public Toilets in Australia

Something we'll learn about soon is using an external API to retrieve data that we want to display on a web page. In this activity, you will focus on displaying data that is retrieved from an API. This will allow you to practice dealing with arrays of objects returned from such APIs, and also practice adding information to a page using DOM manipulation with JavaScript.

Australian national public toilets API
The provided code retrieves a big array of objects from the Australian national public toilet API. The provided code has the web API aspect of the page done for you -- you don't need to worry about retrieving the data, but you will learn about how to do this soon. 

Your task is to iterate through that data & use the JS DOM to add HTML elements to the page to display that data.

HOWEVER, a good web page wouldn't just dump every piece of information about every toilet in Australia into the page. Display only the most-relevant data to the user - the name and address of the toilet.

The scaffold provided logs an element of the data results that are returned - a single toilet entry - so that you can see what keys of data each toilet will have. Pick relevant keys to display.

The result should be something like this (the specific styling & appearance is up to): 



## Bonus!
You can probably already get a sense that this is so powerful! You can use raw data from any number of publicly available APIs and display it in some meaningful way for users. 

A lot of what we do as web developers is to manipulate data and display it in meaningful ways. This requires lots of practice manipulating objects in JavaScript, to arrange and filter data for our purposes. 

Thinking about how the information provided by this API could be useful, consider that showing information in order by postcode might make more sense because it might make it easier for a user to see the information relevant for them.

Change the way the information is displayed on the page, so that toilets are grouped by postcode like this (you can style however you like):



You can accomplish this by implementing another function called arrangeDataByPostcode that takes in the data as a parameter, and creates a new data structure that organises the relevant information by postcode. Use the rearranged data in your displayData function to display toilets grouped by postcode.