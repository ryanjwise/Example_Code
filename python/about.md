## About

The following notes are taken, or copied from:

https://python.land/python-tutorial

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

### Comments

Python lines are commented with a `#` symbol.

There is no special mutiline syntax, however comments ate the start of a class or method called `docstrings` can be included to document its function:

```py
class MyDocumentedClass:
  """This class is well documented but doesn't do anything special."""

  def do_nothing(self):
    """This method doesn't do anything but feel free to call it anyway."""
    pass
```

These can later be called back with the help function:

```py
help(MyDocumentedClass)

# Help on class MyDocumentedClass in module __main__:

# class MyDocumentedClass(builtins.object)
#  |  This class is well documented but doesn't do anything special
#  |
#  |  Methods defined here:
#  |
#  |  do_nothing(self)
#  |      This method doesn't do anything but feel free to call it anyway
```

### Objects

```py
class Car:
  speed = 0
  started = False

  def start(self):
    self.started = True
    print("Car started, let's ride!")

  def increase_speed(self, delta):
    if self.started:
      self.speed = self.speed + delta
      print('Vrooooom!')
    else:
      print("You need to start the car first")

  def stop(self):
    self.speed = 0
    print('Halting')
```

#### Self

Python passes an instance of itsself to a method calle on an object. This automatically fills the first parameter, so it is convention when defining class methods to add the self param to any method, particularly if it takes other parameters, or operates on an instance variable.

#### Constructors

To create an object constructor, you must override the `__init__` method:

```py
class Car:
  def __init__(self, started = False, speed = 0):
    self.started = started
    self.speed = speed
```

#### inheritance

```py
class Vehicle:
    def __init__(self, started = False, speed = 0):
        self.started = started
        self.speed = speed
    def start(self):
        self.started = True
        print("Started, let's ride!")
    def stop(self):
        self.speed = 0
    def increase_speed(self, delta):
        if self.started:
            self.speed = self.speed + delta
            print("Vrooooom!")
        else:
            print("You need to start me first")

class Car(Vehicle):
    trunk_open = False
    def open_trunk(self):
        self.trunk_open = True
    def close_trunk(self):
        self.trunk_open = False
```

### Tuple Tricks

**Spreading**

```py
l1 = [1, 2, 3]
l2 = [4, 5, 6]
t = (*l1, *l2)
t
# (1, 2, 3, 4, 5, 6)
```

**Deconstruction**

```py
person = ('Erik', 38, True)
name, age, registered = person
name
# 'Erik'
```

### Dictionaries

```py
phone_numbers = { 'Jack': '070-02222748',
                  'Pete': '010-2488634' }
my_empty_dict = { }
phone_numbers['Jack']
'070-02222748'
```

```py
dict([ ('Jack', '070-02222748'), 
       ('Pete', '010-2488634'), 
       ('Eric', '06-10101010') 
    ])
# {'Jack': '070-02222748', 'Pete': '010-2488634', 'Eric': '06-10101010'}
```

```py
names = ('Eric', 'Martha', 'Ellen')
phone_numbers = dict.fromkeys(names, None)
phone_numbers
# {'Ellen': None, 'Eric': None, 'Martha': None}
```

```py
import json
jsonstring = '{ "name": "erik", "age": 38, 
                "married": true}'
json.loads(jsonstring)
# {'name': 'erik', 'age': 38, 'married': True}
```

### Iterators

```py
mystring = "ABC"
for letter in mystring:
    print(letter)
# A
# B
# C

mylist = ['A', 'B', 'C']
for letter in mylist:
    print(letter)
# A
# B
# C
```

```py
[x for x in 'ABC']
# ['A', 'B', 'C']

[x for x in [1, 2, 3,4] if x > 2]
# [3, 4]
```

```py
d = {'name': 'Alice', 'age': 23, 'country': 'NL' }
for k in d:
    print(k)
# name
# age
# country
```

```py
with open('cities.txt') as cities:
    for line in cities:
        proccess_city(line)
```

**Create your own iterator**

```py
class EvenNumbers:
    last = 0

    def __iter__(self):
        return self

    def __next__(self):
        self.last += 2

        if self.last > 8:
            raise StopIteration

        return self.last

en = EvenNumbers()

for num in en:
    print(num)   
```