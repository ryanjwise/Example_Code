# Pokemon Data

Before you begin writing any code that will use data from an API server, it is important to:

get details for the API endpoint URL, access requirements, and request parameters 

examine the data returned by the API and its structure

write a simple request in JavaScript to test that you can get and use the data in a script

## Body.json()

When we get a response from an API call, we want to be able to handle that response like a regular JavaScript object by parsing the response as JSON. That is exactly what this function does - it is called on a response body, and returns a Promise that resolves to the JSON that is parsed from the body. 

In your solution, call .json() on the response from the API call so you can process the data and display it in HTML. Remember that this call returns a Promise, and you'll have to use the resolved value of that Promise. Recall from the lesson on Promises that you can do this with Promise chaining rather than by nesting callbacks.

There are no tests for this challenge - just verify your own results and submit to allow instructors to see your attempts.

## Activity

1. In this challenge we are using the PokéAPI. Look through [the documentation provided here](https://pokeapi.co/docs/v2#info). One of the first things you read there is that the API is fully open and publicly available. 
2. Have a look at the [PokeAPI docs](https://pokeapi.co/docs/v2#pokemon) for the Pokemon API endpoint to see what data a Pokemon can have, and how to get data about a Pokemon. 
3. Implement the suggested code in the getPokemonData function. How will you know if you are successful? You'll have to run the code in web preview and check the console log.