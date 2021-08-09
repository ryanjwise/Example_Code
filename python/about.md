## Basics

Python is an interpreted coding language named after 'Monty Python's Flying Circus'. It can be used for many things, but primarily it is used for automation, and backend tasks.

Key Features:

- Interpreted
- Indentation Based
- Dynamically Typed
- Automatic Garbage Collection

**N.B:** `Python2` is end of life and has been supersceded by `Python3`. However, **Python3 is not backwards compatable**.

### Indentation Based

```py
def bigger_than_five(x):
  # The contents of a function are indented
  if x > 5:
    # This is another, even more indented block of code
    print("X is bigger than five")
  else:
    # And one more!
    print("x is 5 or smaller")
```

### REPL

The Pyhton REPL is opened by typing `python3` into the terminal.
It can be excited by typing `quit()`, or using `CTRL+D`

### Data Types

- Strings
- Numbers
- Booleans
- Lists (Arrays)
- Dictionaries
- Variables
- Loops
- Iterators

#### Strings

 Can be declared across multiple Lines with `"""`
 ```py
my_big_string = """This is line 1,
this is line 2,
this is line 3."""
```

##### Methods

To see available methods type the following into REPL
```py
mystring = "Hello World"
mystring. <TAB><TAB>
```

### Operators

| Operator | Name           | Example |
| -------- | -------------- | ------- |
| +        | Addition       | 2 + 2   |
| -        | Subtraction    | 3 - 1   |
| *        | Multiplication | 5 * 3   |
| /        | Division       | 5 / 2   |
| %        | Modulus        | 5 % 2   |
| //       | Floor Division | 9 // 2  |
| **       | Exponential    | 2 ** 4  |

### Functions

```py
def welcome(name='learner', location='this tutorial'):
	print("Hi", name, "welcome to", location)

welcome('Erik', 'your home')
# Hi Erik welcome to your home
```

### Loops

**For Loop**

```py
for letter in 'Hello':
    print(letter)

# H
# e
# l
# l
# o
```

**While Loop**

```py
i = 1
while i <= 4:
    print(i)
    i = i + 1

# 1
# 2
# 3
# 4
```

https://python.land/introduction-to-python/python-comment