# Model View Controller

Breaks doen the application structure into three different, discreet parts:

1. View
    - What/How the user is interacting with the application.
1. Model
    - The representation of the data
1. Controller
    - "Middle Man"
    - Prompts the model for information, or updates the model based on prompts from the view.

## The Model

- Represents and manages the data in the application
- Connects to the database
- Defines the data structure
- Validates any use of the data
- Retrieves information
- Updates the data

## The View

- User Interface
- Displays content and data retrieved from the model
- Allows interaction with the model through the view logic

## The controller

- The brain of the application
- Controlls flow of information through the application.

## Conventions

### Directory Structure

```text
Root/
  ./controllers/..
  ./models/..
  ./views/..
  ./application.rb
```

### Decoupling

The logic and interface need to be decoupled from each other, this means that the interface can change without effecting the underlying logic and vice versa.
This allows code to be reused and helps to minimise the dependancy in the event of having to maintain depreciated code.
