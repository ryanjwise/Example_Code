Source: https://pine.fm/LearnToProgram/chap_00.html

# Getting Started
## Chapter 0 

---

When you program a computer, you have to "speak" in a language your computer understands: a programming language. There are lots and lots of different languages out there, and many of them are excellent. In this tutorial I chose to use my favorite programming language, Ruby.

Aside from being my favorite, Ruby is also the easiest programming language I have seen (and I've seen quite a few). In fact, that's the real reason I'm writing this tutorial: I didn't decide to write a tutorial, and then choose Ruby because it's my favorite; instead, I found Ruby to be so easy that I decided there really ought to be a good beginner's tutorial which uses it. It's Ruby's simplicity which prompted this tutorial, not the fact that it's my favorite. (Writing a similar tutorial using another language, like C++ or Java, would have required hundreds and hundreds of pages.) But don't think that Ruby is a beginner's language just because it is easy! It is a powerful, professional-strength programming language if ever there was one.

When you write something in a human language, what is written is called text. When you write something in a computer language, what is written is called code. I have included lots of examples of Ruby code throughout this tutorial, most of them complete programs you can run on your own computer. To make the code easier to read, I have colored parts of the code different colors. (For example, numbers are always green.) Anything you are supposed to type in will be in a dotted box, and anything a program prints out will be in a grey box.

If you come across something you don't understand, or you have a question which wasn't answered, write it down and keep reading! It's quite possible that the answer will come in a later chapter. However, if your question was not answered by the last chapter, I will tell you where you can go to ask it. There are lots of wonderful people out there more than willing to help; you just need to know where they are.

But first we need to download and install Ruby onto your computer.

### Windows Installation

The Windows installation of Ruby is a breeze. First, you need to download Ruby(https://www.ruby-lang.org/en/downloads/). There might be a couple of versions to choose from; this tutorial is using version 3.0.0, so make sure what you download is at least as recent as that. (I would just get the latest version available.) Then simply run the installation program. It will ask you where you want to install Ruby. Unless you have a good reason for it, I would just install it in the default location.

In order to program, you need to be able to write programs and to run programs. To do this, you will need a text editor and a command line. My favorite text editor is Sublime Text.

It would also be a good idea to create a folder somewhere to keep all of your programs. Make sure that when you save a program, you save it into this folder.

To get to your command line, select Command Prompt from the Accessories folder in your start menu. You will want to navigate to the folder where you are keeping your programs. Typing `cd ..` will take you up one folder, and `cd foldername` would put you inside the folder named `foldername`. To see all of the folders in your current folder, type `dir /ad`.

And that's it! You're all set to learn to program.

### Macintosh Installation

If you have Mac OS X 10.2 (Jaguar) or later, then you already have Ruby on your system! What could be easier?

In order to program, you need to be able to write programs and to run programs. To do this, you will need a text editor and a command line.

Your command line is accessible through the Terminal application (found in Applications/Utilities).

For a text editor, you can use whatever one you are familiar or comfortable with. My favorite text editor is Sublime Text. If you use TextEdit, however, make sure you save your programs as text-only! Otherwise your programs will not work.

And that's it! You're all set to learn to program.

### Linux Installation

First, you will want to check and see if you have Ruby installed already. Type `which ruby`. If it says something like `/usr/bin/which: no ruby in (...)`, then you need to download Ruby, otherwise see what version of Ruby you are running with `ruby -v`. If it is older than the latest stable build on the above download page, you might want to upgrade.

If you are the root user, then you probably don't need any instructions for installing Ruby. If you aren't, you might want to ask your system administrator to install it for you. (That way everyone on that system could use Ruby.)

Otherwise, you can just install it so that only you can use it. Move the file you downloaded to a temporary directory, like $HOME/tmp. If the name of the file is ruby-1.6.7.tar.gz, you can open it with `tar zxvf ruby-1.6.7.tar.gz`. Change directory to the directory you just created (in this example, `cd ruby-1.6.7`).

Configure your installation by typing `./configure --prefix=$HOME`). Next type `make`, which will build your Ruby interpreter. This might take a few minutes. After that is done, type `make install` to install it.

Next, you'll want to add `$HOME/bin` to your command search path by editing your `$HOME/.bashrc` file. (You might have to log out and back in again for this to take effect.) After you do that, test your installation: `ruby -v`. If that tells you what version of Ruby you have, you can now delete the files in `$HOME/tmp` (or wherever you put them).

And that's it! You're all set to learn to program.

---


# Numbers
## Chapter 1

---

Now that you've gotten everything setup, let's write a program! Open up your favorite text editor and type in the following:

```puts 1+2```

Save your program (yes, that's a program!) as `calc.rb` (the .rb is what we usually put at the end of programs written in Ruby). Now run your program by typing `ruby calc.rb` into your command line. It should have put a `3` on your screen. See, programming isn't so hard, now is it?

### Introduction to puts

So what's going on in that program? I'm sure you can guess what the 1+2 does; our program is basically the same as:

```puts 3```

puts simply writes onto the screen whatever comes after it.

### Integer and Float

In most programming languages (and Ruby is no exception) numbers without decimal points are called integers, and numbers with decimal points are usually called floating-point numbers, or more simply, floats.

Here are some integers:

```
5
-205
9999999999999999999999999
0
```

And here are some floats:

```
54.321
0.001
-205.3884
0.0
```

In practice, most programs don't use floats; only integers. (After all, no one wants to look at 7.4 emails, or browse 1.8 webpages, or listen to 5.24 of their favorite songs...) Floats are used more for academic purposes (physics experiments and such) and for 3D graphics. Even most money programs use integers; they just keep track of the number of pennies!


### Simple Arithmetic

So far, we've got all the makings of a simple calculator. (Calculators always use floats, so if you want your computer to act just like a calculator, you should also use floats.) For addition and subtraction, we use + and -, as we saw. For multiplication, we use *, and for division we use /. Most keyboards have these keys in the numeric keypad on the far right side. If you have a smaller keyboard or a laptop, though, you can just use Shift 8 and / (same key as the ? key). Let's try to expand our calc.rb program a little. Type in the following and then run it.

```
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0
```

This is what the program returns:

```
3.0
6.0
-3.0
4.5
```

(The spaces in the program are not important; they just make the code easier to read.) Well, that wasn't too surprising. Now let's try it with integers:

```
puts 1+2
puts 2*3
puts 5-8
puts 9/2
```

Mostly the same, right?

```
3
6
-3
4
```

Uh... except for that last one! But when you do arithmetic with integers, you'll get integer answers. When your computer can't get the "right" answer, it always rounds down. (Of course, `4` is the right answer in integer arithmetic for `9/2`; just maybe not the answer you were expecting.)

Perhaps you're wondering what integer division is good for. Well, let's say you're going to the movies, but you only have $9. Here in Portland, you can see a movie at the Bagdad for 2 bucks. How many movies can you see there? `9/2... 4` movies. 4.5 is definitely not the right answer in this case; they will not let you watch half of a movie, or let half of you in to see a whole movie... some things just aren't divisible.

So now experiment with some programs of your own! If you want to write more complex expressions, you can use parentheses. For example:

```
puts 5 * (12-8) + -15
puts 98 + (59872 / (13*8)) * -52
```
```
5
-29802
```

A Few Things to Try

Write a program which tells you:

- how many hours are in a year?
- how many minutes are in a decade?
- how many seconds old are you?
- how many chocolates do you hope to eat in your life?
- Warning: This part of the program could take a while to compute!

Here's a tougher question:

- If I am 1403 million seconds old, how old am I?

When you're done playing around with numbers, let's have a look at some letters.

---


Letters
Chapter 2
 

So we've learned all about numbers, but what about letters? words? text?

We refer to groups of letters in a program as strings. (You can think of printed letters being strung together on a banner.) To make it easier to see just what part of the code is in a string, I'll color strings red. Here are some strings:

'Hello.'
'Ruby rocks.'
'5 is my favorite number... what is yours?'
'Snoopy says #%^?&*@! when he stubs his toe.'
'     '
''

As you can see, strings can have punctuation, digits, symbols, and spaces in them... more than just letters. That last string doesn't have anything in it at all; we would call that an empty string.

We have been using puts to print numbers; let's try it with some strings:

puts 'Hello, world!'
puts ''
puts 'Good-bye.'

Hello, world!

Good-bye.

That worked out well. Now try some strings of your own.
String Arithmetic

Just as you can do arithmetic on numbers, you can also do arithmetic on strings! Well, sort of... you can add strings, anyway. Let's try to add two strings and see what puts does with that.

puts 'I like' + 'apple pie.'

I likeapple pie.

Whoops! I forgot to put a space between 'I like' and 'apple pie.'. Spaces don't matter usually, but they matter inside strings. (It's true what they say: computers don't do what you want them to do, only what you tell them to do.) Let's try that again:

puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'

I like apple pie.
I like apple pie.

(As you can see, it didn't matter which string I added the space to.)

So you can add strings, but you can also multiply them! (By a number, anyway.) Watch this:

puts 'blink ' * 4

batting her eyes

(Just kidding... it really does this:)

blink blink blink blink 

If you think about it, this makes perfect sense. After all, 7*3 really just means 7+7+7, so 'moo'*3 just means 'moo'+'moo'+'moo'.
12 vs '12'

Before we get any further, we should make sure we understand the difference between numbers and digits. 12 is a number, but '12' is a string of two digits.

Let's play around with this for a while:

puts  12  +  12
puts '12' + '12'
puts '12  +  12'

24
1212
12  +  12

How about this:

puts  2  *  5
puts '2' *  5
puts '2  *  5'

10
22222
2  *  5

These examples were pretty straightforward. However, if you're not too careful with how you mix your strings and your numbers, you might run into...
Problems

At this point you may have tried out a few things which didn't work. If not, here are a few:

puts '12' + 12
puts '2' * '5'

#<TypeError: no implicit conversion of Integer into String>

Hmmm... an error message. The problem is that you can't really add a number to a string, or multiply a string by another string. It doesn't make any more sense than does this:

puts 'Betty' + 12
puts 'Fred' * 'John'

Something else to be aware of: you can write 'pig'*5 in a program, since it just means 5 sets of the string 'pig' all added together. However, you can't write 5*'pig', since that means 'pig' sets of the number 5, which is just silly.

Finally, what if I want a program to print out You're swell!? We can try this:

puts 'You're swell!'

Well, that won't work; I won't even try to run it. The computer thought we were done with the string. (This is why it's nice to have a text editor which does syntax coloring for you.) So how do we let the computer know we want to stay in the string? We have to escape the apostrophe, like this:

puts 'You\'re swell!'

You're swell!

The backslash is the escape character. In other words, if you have a backslash and another character, they are sometimes translated into a new character. The only things the backslash escapes, though, are the apostrophe and the backslash itself. (If you think about it, escape characters must always escape themselves.) A few examples are in order here, I think:

puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'

You're swell!
backslash at the end of a string:  \
up\down
up\down

Since the backslash does not escape a 'd', but does escape itself, those last two strings are identical. They don't look the same in the code, but in your computer they really are the same.

If you have any other questions, just keep reading! I couldn't answer every question on this page, after all.

---


Variables and Assignment
Chapter 3
 

So far, whenever we have putsed a string or a number, the thing we putsed is gone. What I mean is, if we wanted to print something out twice, we would have to type it in twice:

puts '...you can say that again...'
puts '...you can say that again...'

...you can say that again...
...you can say that again...

It would be nice if we could just type it in once and then hang on to it... store it somewhere. Well, we can, of course—otherwise, I wouldn't have brought it up!

To store the string in your computer's memory, we need to give the string a name. Programmers often refer to this process as assignment, and they call the names variables. This variable can be just about any sequence of letters and numbers, but the first character needs to be a lowercase letter. Let's try that last program again, but this time I will give the string the name myString (though I could just as well have named it str or myOwnLittleString or henryTheEighth).

myString = '...you can say that again...'
puts myString
puts myString

...you can say that again...
...you can say that again...

Whenever you tried to do something to myString, the program did it to '...you can say that again...' instead. You can think of the variable myString as "pointing to" the string '...you can say that again...'. Here's a slightly more interesting example:

name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
puts 'My name is ' + name + '.'
puts 'Wow!  ' + name + ' is a really long name!'

My name is Patricia Rosanna Jessica Mildred Oppenheimer.
Wow!  Patricia Rosanna Jessica Mildred Oppenheimer is a really long name!

Also, just as we can assign an object to a variable, we can reassign a different object to that variable. (This is why we call them variables: because what they point to can vary.)

composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

Mozart was "da bomb", in his day.
But I prefer Beethoven, personally.

Of course, variables can point to any kind of object, not just strings:

var = 'just another ' + 'string'
puts var

var = 5 * (1+2)
puts var

just another string
15

In fact, variables can point to just about anything... except other variables. So what happens if we try?

var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2

8
8

eight
8

So first, when we tried to point var2 to var1, it really pointed to 8 instead (just like var1 was pointing to). Then we had var1 point to 'eight', but since var2 was never really pointing at var1, it stays pointing at 8.

So now that we've got variables, numbers, and strings, let's learn how to mix them all up!

---


Mixing It Up
Chapter 4
 

We've looked at a few different kinds of objects (numbers and letters), and we made variables to point to them; the next thing we want to do is to get them all to play nicely together.

We've seen that if we want a program to print 25, the following does not work, because you can't add numbers and strings:

var1 = 2
var2 = '5'

puts var1 + var2

Part of the problem is that your computer doesn't know if you were trying to get 7 (2 + 5), or if you wanted to get 25 ('2' + '5').

Before we can add these together, we need some way of getting the string version of var1, or to get the integer version of var2.
Conversions

To get the string version of an object, we simply write .to_s after it:

var1 = 2
var2 = '5'

puts var1.to_s + var2

25

Similarly, to_i gives the integer version of an object, and to_f gives the float version. Let's look at what these three methods do (and don't do) a little more closely:

var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i

25
7

Notice that, even after we got the string version of var1 by calling to_s, var1 was always pointing at 2, and never at '2'. Unless we explicitly reassign var1 (which requires an = sign), it will point at 2 for the life of the program.

Now let's try some more interesting (and a few just weird) conversions:

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i
puts ''
puts '5 is my favorite number!'.to_i
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

15.0
99.999
99

5
0
0.0

stringy
3

So, this probably gave some surprises. The first one is pretty standard, giving 15.0. After that, we converted the string '99.999' to a float and to an integer. The float did what we expected; the integer was, as always, rounded down.

Next, we had some examples of some... unusual strings being converted into numbers. to_i ignores the first thing it doesn't understand, and the rest of the string from that point on. So the first one was converted to 5, but the others, since they started with letters, were ignored completely... so the computer just picks zero.

Finally, we saw that our last two conversions did nothing at all, just as we would expect.
Another Look at puts

There's something strange about our favorite method... Take a look at this:

puts 20
puts 20.to_s
puts '20'

20
20
20

Why do these three all print the same thing? Well, the last two should, since 20.to_s is '20'. But what about the first one, the integer 20? For that matter, what does it even mean to write out the integer 20? When you write a 2 and then a 0 on a piece of paper, you are writing down a string, not an integer. The integer 20 is the number of fingers and toes I have; it isn't a 2 followed by a 0.

Well, here's the big secret behind our friend, puts: Before puts tries to write out an object, it uses to_s to get the string version of that object. In fact, the s in puts stands for string; puts really means put string.

This may not seem too exciting now, but there are many, many kinds of objects in Ruby (you'll even learn how to make your own!), and it's nice to know what will happen if you try to puts a really weird object, like a picture of your grandmother, or a music file or something. But that will come later...

In the meantime, we have a few more methods for you, and they allow us to write all sorts of fun programs...
The Methods gets and chomp

If puts means put string, I'm sure you can guess what gets stands for. And just as puts always spits out strings, gets will only retrieve strings. And whence does it get them?

From you! Well, from your keyboard, anyway. Since your keyboard only makes strings, that works out beautifully. What actually happens is that gets just sits there, reading what you type until you press Enter. Let's try it out:

puts gets

Is there an echo in here?
Is there an echo in here?

Of course, whatever you type in will just get repeated back to you. Run it a few times and try typing in different things.

Now we can make interactive programs! In this one, type in your name and it will greet you:

puts 'Hello there, and what\'s your name?'
name = gets
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'

Eek! I just ran it—I typed in my name, and this is what happened:

Hello there, and what's your name?
Chris
Your name is Chris
?  What a lovely name!
Pleased to meet you, Chris
.  :)

Hmmm... it looks like when I typed in the letters C, h, r, i, s, and then pressed Enter, gets got all of the letters in my name and the Enter! Fortunately, there's a method just for this sort of thing: chomp. It takes off any Enters hanging out at the end of your string. Let's try that program again, but with chomp to help us this time:

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'

Hello there, and what's your name?
Chris
Your name is Chris?  What a lovely name!
Pleased to meet you, Chris.  :)

Much better! Notice that since name is pointing to gets.chomp, we don't ever have to say name.chomp; name was already chomped.
A Few Things to Try

    Write a program which asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
    Write a program which asks for a person's favorite number. Have your program add one to the number, then suggest the result as a bigger and better favorite number. (Do be tactful about it, though.)

Once you have finished those two programs (and any others you would like to try), let's learn some more (and some more about) methods.

---


More About Methods
Chapter 5
 

So far we've seen a number of different methods, puts and gets and so on (Pop Quiz: List all of the methods we have seen so far! There are ten of them; the answer is below.), but we haven't really talked about what methods are. We know what they do, but we don't know what they are.

But really, that is what they are: things that do stuff. If objects (like strings, integers, and floats) are the nouns in the Ruby language, then methods are like the verbs. And, just like in English, you can't have a verb without a noun to do the verb. For example, ticking isn't something that just happens; a clock (or a watch or something) has to do it. In English we would say, "The clock ticks." In Ruby we would say clock.tick (assuming that clock was a Ruby object, of course). Programmers might say we were "calling clock's tick method," or that we "called tick on clock."

So, did you take the quiz? Good. Well, I'm sure you remembered the methods puts, gets, and chomp, since we just covered those. You probably also got our conversion methods, to_i, to_f, and to_s. However, did you get the other four? Why, it's none other than our old arithmetic buddies +, -, *, and /!

So as I was saying, just as every verb needs a noun, so every method needs an object. It's usually easy to tell which object is performing the method: it's what comes right before the dot, like in our clock.tick example, or in 101.to_s. Sometimes, however, it's not quite as obvious; like with the arithmetic methods. As it turns out, 5 + 5 is really just a shortcut way of writing 5.+ 5. For example:

puts 'hello '.+ 'world'
puts (10.* 9).+ 9

hello world
99

It isn't very pretty, so we won't ever write it like that; however, it's important to understand what is really happening. (On older versions of Ruby, this code might also give a warning: warning: parenthesize argument(s) for future version. It would still run the code just fine, though.) This also gives us a deeper understanding of why we can do 'pig'*5 but we can't do 5*'pig': 'pig'*5 is telling 'pig' to do the multiplying, but 5*'pig' is telling 5 to do the multiplying. 'pig' knows how to make 5 copies of itself and add them all together; however, 5 will have a much more difficult time of making 'pig' copies of itself and adding them together.

And, of course, we still have puts and gets to explain. Where are their objects? In English, you can sometimes leave out the noun; for example, if a villain yells "Die!", the implicit noun is whoever he is yelling at. In Ruby, if I say puts 'to be or not to be', what I am really saying is self.puts 'to be or not to be'. So what is self? It's a special variable which points to whatever object you are in. We don't even know how to be in an object yet, but until we find out, we are always going to be in a big object which is... the whole program! And lucky for us, the program has a few methods of its own, like puts and gets. Watch this:

iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3
self.puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

3
3

If you didn't entirely follow all of that, that's OK. The important thing to take away from all of this is that every method is being done by some object, even if it doesn't have a dot in front of it. If you understand that, then you're all set.
Fancy String Methods

Let's learn a few fun string methods. You don't have to memorize them all; you can just look up this page again if you forget them. I just want to show you a small part of what strings can do. In fact, I can't remember even half of the string methods myself—but that's fine, because there are great references on the internet with all of the string methods listed and explained. (I will show you where to find them at the end of this tutorial.) Really, I don't even want to know all the string methods; it's kind of like knowing every word in the dictionary. I can speak English just fine without knowing every word in the dictionary... and isn't that really the whole point of the dictionary? So you don't have to know what's in it?

So, our first string method is reverse, which gives a backwards version of a string:

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

pots
desserts
?sdrawkcab ecnetnes siht ecnuonorp uoy naC
stop
stressed
Can you pronounce this sentence backwards?

As you can see, reverse doesn't reverse the original string; it just makes a new backwards version of it. That's why var1 is still 'stop' even after we called reverse on var1.

Another string method is length, which tells us the number of characters (including spaces) in the string:

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length +
     ' characters in your name, ' + name + '?'

What is your full name?
Christopher David Pine
#<TypeError: no implicit conversion of Integer into String>

Uh-oh! Something went wrong, and it looks like it happened sometime after the line name = gets.chomp... Do you see the problem? See if you can figure it out.

The problem is with length: it gives us a number, but we want a string. Easy enough, we'll just throw in a to_s (and cross our fingers):

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s +
     ' characters in your name, ' + name + '?'

What is your full name?
Christopher David Pine
Did you know there are 22 characters in your name, Christopher David Pine?

No, I did not know that. Note: that's the number of characters in my name, not the number of letters (count 'em). I guess we could write a program which asks for your first, middle, and last names individually, and then adds those lengths together... hey, why don't you do that! Go ahead, I'll wait.

Did you do it? Good! It's nice to program, isn't it? After a few more chapters, though, you'll be amazed at what you can do.

So, there are also a number of string methods which change the case (uppercase and lowercase) of your string. upcase changes every lowercase letter to uppercase, and downcase changes every uppercase letter to lowercase. swapcase switches the case of every letter in the string, and finally, capitalize is just like downcase, except that it switches the first character to uppercase (if it is a letter).

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

AABBCCDDEE
aabbccddee
AaBbCcDdEe
Aabbccddee
 a
aAbBcCdDeE

Pretty standard stuff. As you can see from the line puts ' a'.capitalize, the method capitalize only capitalizes the first character, not the first letter. Also, as we have seen before, throughout all of these method calls, letters remains unchanged. I don't mean to belabor the point, but it's important to understand. There are some methods which do change the associated object, but we haven't seen any yet, and we won't for some time.

The last of the fancy string methods we'll look at are for visual formatting. The first one, center, adds spaces to the beginning and end of the string to make it centered. However, just like you have to tell puts what you want it to print, and + what you want it to add, you have to tell center how wide you want your centered string to be. So if I wanted to center the lines of a poem, I would do it like this:

lineWidth = 50
puts(                'Old Mother Hubbard'.center(lineWidth))
puts(               'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey,'.center(lineWidth))
puts(          'When along came a spider'.center(lineWidth))
puts(         'Which sat down beside her'.center(lineWidth))
puts('And scared her poor shoe dog away.'.center(lineWidth))

                Old Mother Hubbard                
               Sat in her cupboard                
            Eating her curds an whey,             
             When along came a spider             
            Which sat down beside her             
        And scared her poor shoe dog away.        

Hmmm... I don't think that's how that nursery rhyme goes, but I'm too lazy to look it up. (Also, I wanted to line up the .center lineWidth part, so I put in those extra spaces before the strings. This is just because I think it is prettier that way. Programmers often have strong feelings about what is pretty in a program, and they often disagree about it. The more you program, the more you will come into your own style.) Speaking of being lazy, laziness isn't always a bad thing in programming. For example, see how I stored the width of the poem in the variable lineWidth? This was so that if I want to go back later and make the poem wider, I only have to change the very top line of the program, instead of every line which does centering. With a very long poem, this could save me a lot of time. That kind of laziness is really a virtue in programming.

So, about that centering... you may have noticed that it isn't quite as beautiful as what a word processor would have done. If you really want perfect centering (and maybe a nicer font), then you should just use a word processor! Ruby is a wonderful tool, but no tool is the right tool for every job.

The other two string formatting methods are ljust and rjust, which stand for left justify and right justify. They are similar to center, except that they pad the string with spaces on the right and left sides, respectively. Let's take a look at all three in action:

lineWidth = 40
str = '--> text <--'
puts str.ljust  lineWidth
puts str.center lineWidth
puts str.rjust  lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

--> text <--                            
              --> text <--              
                            --> text <--
--> text <--                --> text <--

A Few Things to Try

    Write an Angry Boss program. It should rudely ask what you want. Whatever you answer, the Angry Boss should yell it back to you, and then fire you. For example, if you type in I want a raise., it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!

    So here's something for you to do in order to play around more with center, ljust, and rjust: Write a program which will display a Table of Contents so that it looks like this:

                    Table of Contents                
                                                     
    Chapter 1:  Numbers                        page 1
    Chapter 2:  Letters                       page 72
    Chapter 3:  Variables                    page 118

Higher Math

(This section is totally optional. It assumes a fair degree of mathematical knowledge. If you aren't interested, you can go straight to Flow Control without any problems. However, a quick look at the section on Random Numbers might come in handy.)

There aren't nearly as many number methods as there are string methods (though I still don't know them all off the top of my head). Here, we'll look at the rest of the arithmetic methods, a random number generator, and the Math object, with its trigonometric and transcendental methods.
More Arithmetic

The other two arithmetic methods are ** (exponentiation) and % (modulus). So if you want to say "five squared" in Ruby, you would write it as 5**2. You can also use floats for your exponent, so if you want the square root of 5, you could write 5**0.5. The modulus method gives you the remainder after division by a number. So, for example, if I divide 7 by 3, I get 2 with a remainder of 1. Let's see it working in a program:

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

25
2.23606797749979
2
1
1

From that last line, we learn that a (non-leap) year has some number of weeks, plus one day. So if your birthday was on a Tuesday this year, it will be on a Wednesday next year. You can also use floats with the modulus method. Basically, it works the only sensible way it could... but I'll let you play around with that.

There's one last method to mention before we check out the random number generator: abs. It just takes the absolute value of the number:

puts((5-2).abs)
puts((2-5).abs)

3
3

Random Numbers

Ruby comes with a pretty nice random number generator. The method to get a randomly chosen number is rand. If you call rand just like that, you'll get a float greater than or equal to 0.0 and less than 1.0. If you give rand an integer (5 for example), it will give you an integer greater than or equal to 0 and less than 5 (so five possible numbers, from 0 to 4).

Let's see rand in action.

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a '+rand(101).to_s+'% chance of rain,')
puts('but you can never trust a weatherman.')

0.17429261270690644
0.6038796470847551
0.5357456897902644
82
63
21
0
0
0
93717128025224525218060865578711367433735357080012377789690
The weatherman said there is a 9% chance of rain,
but you can never trust a weatherman.

Note that I used rand(101) to get back numbers from 0 to 100, and that rand(1) always gives back 0. Not understanding the range of possible return values is the biggest mistake I see people make with rand; even professional programmers; even in finished products you can buy at the store. I even had a CD player once which, if set on "Random Play," would play every song but the last one... (I wonder what would have happened if I had put in a CD with only one song on it?)

Sometimes you might want rand to return the same random numbers in the same sequence on two different runs of your program. (For example, once I was using randomly generated numbers to create a randomly generated world for a computer game. If I found a world that I really liked, perhaps I would want to play on it again, or send it to a friend.) In order to do this, you need to set the seed, which you can do with srand. Like this:

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

24
35
36
58
70

24
35
36
58
70

It will do the same thing every time you seed it with the same number. If you want to get different numbers again (like what happens if you never use srand), then just call srand 0. This seeds it with a really weird number, using (among other things) the current time on your computer, down to the millisecond.
The Math Object

Finally, let's look at the Math object. We might as well jump right in:

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)

3.141592653589793
2.718281828459045
0.5000000000000001
0.9999999999999999
2.0
1.618033988749895

The first thing you noticed was probably the :: notation. Explaining the scope operator (which is what that is) is really beyond the, uh... scope of this tutorial. No pun intended. I swear. Suffice it to say, you can use Math::PI just like you would expect to.

As you can see, Math has all of the things you would expect a decent scientific calculator to have. And as always, the floats are really close to being the right answers.

So now let's flow!

---


# Flow Control
## Chapter 6

---

Ahhhh, flow control. This is where it all comes together. Even though this chapter is shorter and easier than the methods chapter, it will open up a whole world of programming possibilities. After this chapter, we'll be able to write truly interactive programs; in the past we have made programs which say different things depending on your keyboard input, but after this chapter they will actually do different things, too. But before we can do that, we need to be able to compare the objects in our programs. We need...

### Comparison Methods

Let's rush through this part so we can get to the next section, Branching, where all the cool stuff happens. So, to see if one object is greater than or less than another, we use the methods > and <, like this:

puts 1 > 2
puts 1 < 2

false
true

No problem. Likewise, we can find out if an object is greater-than-or-equal-to another (or less-than-or-equal-to) with the methods >= and <=

puts 5 >= 5
puts 5 <= 4

true
false

And finally, we can see if two objects are equal or not using == (which means "are these equal?") and != (which means "are these different?"). It's important not to confuse = with ==. = is for telling a variable to point at an object (assignment), and == is for asking the question: "Are these two objects equal?"

puts 1 == 1
puts 2 != 1

true
true

Of course, we can compare strings, too. When strings get compared, they compare their lexicographical ordering, which basically means their dictionary ordering. cat comes before dog in the dictionary, so:

puts 'cat' < 'dog'

true

There's a catch, though: the way computers usually do things, they order capital letters as coming before lowercase letters. (That's how they store the letters in fonts, for example: all the capital letters first, then the lowercase ones.) This means that it will think 'Zoo' comes before 'ant', so if you want to figure out which word would come first in a real dictionary, make sure to use downcase (or upcase or capitalize) on both words before you try to compare them.

One last note before Branching: The comparison methods aren't giving us the strings 'true' and 'false'; they are giving us the special objects true and false. (Of course, true.to_s gives us 'true', which is why puts printed 'true'.) true and false are used all the time in...
Branching

Branching is a simple concept, but powerful. In fact, it's so simple that I bet I don't even have to explain it at all; I'll just show you:

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
end

Hello, what's your name?
Chris
Hello, Chris.
What a lovely name!

But if we put in a different name...

Hello, what's your name?
Chewbacca
Hello, Chewbacca.

And that is branching. If what comes after the if is true, we run the code between the if and the end. If what comes after the if is false, we don't. Plain and simple.

I indented the code between the if and the end just because I think it's easier to keep track of the branching that way. Almost all programmers do this, regardless of what language they are programming in. It may not seem much help in this simple example, but when things get more complex, it makes a big difference.

Often, we would like a program to do one thing if an expression is true, and another if it is false. That's what else is for:

puts 'I am a fortune-teller.  Tell me your name:'
name = gets.chomp
if name == 'Chris'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my!  Look at the time!'
  puts 'I really have to go, sorry!'
end

I am a fortune-teller.  Tell me your name:
Chris
I see great things in your future.

Now let's try a different name...

I am a fortune-teller.  Tell me your name:
Ringo
Your future is... Oh my!  Look at the time!
I really have to go, sorry!

Branching is kind of like coming to a fork in the code: Do we take the path for people whose name == 'Chris', or else do we take the other path?

And just like the branches of a tree, you can have branches which themselves have branches:

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
    puts 'Hmmph!  Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end

Hello, and welcome to 7th grade English.
My name is Mrs. Gabbard.  And your name is...?
chris
chris?  You mean Chris, right?
Don't you even know how to spell your name??
yes
Hmmph!  Well, sit down!

Fine, I'll capitalize it...

Hello, and welcome to 7th grade English.
My name is Mrs. Gabbard.  And your name is...?
Chris
Please take a seat, Chris.

Sometimes it might get confusing trying to figure out where all of the ifs, elses, and ends go. What I do is write the end at the same time I write the if. So as I was writing the above program, this is how it looked first:

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
else
end

Then I filled it in with comments, stuff in the code the computer will ignore:

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  # She's civil.
else
  # She gets mad.
end

Anything after a # is considered a comment (unless, of course, you are in a string). After that, I replaced the comments with working code. Some people like to leave the comments in; personally, I think well-written code usually speaks for itself. I used to use more comments, but the more "fluent" in Ruby I become, the less I use them. I actually find them distracting much of the time. It's a personal choice; you'll find your own (usually evolving) style. So my next step looked like this:

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard.  And your name is...?'
name = gets.chomp

if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '?  You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp

  if reply.downcase == 'yes'
  else
  end
end

Again, I wrote down the if, else, and end all at the same time. It really helps me keep track of "where I am" in the code. It also makes the job seem easier because I can focus on one small part, like filling in the code between the if and the else. The other benefit of doing it this way is that the computer can understand the program at any stage. Every one of the unfinished versions of the program I showed you would run. They weren't finished, but they were working programs. That way I could test it as I wrote it, which helped to see how it was coming along and where it still needed work. When it passed all of the tests, that's how I knew I was done!

These tips will help you write programs with branching, but they also help with the other main type of flow control:
Looping

Often, you'll want your computer to do the same thing over and over again—after all, that's what computers are supposed to be so good at.

When you tell your computer to keep repeating something, you also need to tell it when to stop. Computers never get bored, so if you don't tell it to stop, it won't. We make sure this doesn't happen by telling the computer to repeat certain parts of a program while a certain condition is true. This works very similarly to how if works:

command = ''

while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'


Hello?
Hello?
Hi!
Hi!
Very nice to meet you.
Very nice to meet you.
Oh... how sweet!
Oh... how sweet!
bye
Come again soon!

And that's a loop. (You may have noticed the blank line at the beginning of the output; it's from the first puts, before the first gets. How would you change the program to get rid of this first line. Test it! Did it work exactly like the program above, other than that first blank line?)

Loops allow you to do all kinds of interesting things, as I'm sure you can imagine. However, they can also cause problems if you make a mistake. What if your computer gets trapped in an infinite loop? If you think this may have happened, just hold down the Ctrl key and press C.

Before we start playing around with loops, though, let's learn a few things to make our job easier.
A Little Bit of Logic

Let's take a look at our first branching program again. What if my wife came home, saw the program, tried it out, and it didn't tell her what a lovely name she had? Well... she probably wouldn't care. But I'd care! So let's rewrite it:

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Chris'
  puts 'What a lovely name!'
else
  if name == 'Katy'
    puts 'What a lovely name!'
  end
end

Hello, what's your name?
Katy
Hello, Katy.
What a lovely name!

It works... but it isn't a very pretty program. Why not? Well, the best rule I ever learned in programming was the DRY rule: Don't Repeat Yourself. I could probably write a small book just on why that is such a good rule. In our case, we repeated the line puts 'What a lovely name!'. Why is this such a big deal? Well, what if I made a spelling mistake when I rewrote it? What if I wanted to change it from 'lovely' to 'beautiful' on both lines? I'm lazy, remember? Basically, if I want the program to do the same thing when it gets 'Chris' or 'Katy', then it should really do the same thing:

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if (name == 'Chris' or name == 'Katy')
  puts 'What a lovely name!'
end

Hello, what's your name?
Katy
Hello, Katy.
What a lovely name!

Much better. In order to make it work, I used or. The other logical operators are and and not. It is always a good idea to use parentheses when working with these. Let's see how they work:

iAmChris  = true
iAmPurple = false
iLikeFood = true
iEatRocks = false

puts (iAmChris  and iLikeFood)
puts (iLikeFood and iEatRocks)
puts (iAmPurple and iLikeFood)
puts (iAmPurple and iEatRocks)
puts
puts (iAmChris  or iLikeFood)
puts (iLikeFood or iEatRocks)
puts (iAmPurple or iLikeFood)
puts (iAmPurple or iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmChris )

true
false
false
false

true
true
true
false

true
false

The only one of these which might trick you is or. In English, we often use "or" to mean "one or the other, but not both." For example, your mom might say, "For dessert, you can have pie or cake." She did not mean you could have them both! A computer, on the other hand, uses or to mean "one or the other, or both." (Another way of saying it is, "at least one of these is true.") This is why computers are more fun than moms.
A Few Things to Try

    "99 bottles of beer on the wall..." Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: "99 Bottles of Beer on the Wall."
    Write a Deaf Grandma program. Whatever you say to grandma (whatever you type in), she should respond with HUH?!  SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your program really believable, have grandma shout a different year each time; maybe any year at random between 1930 and 1950. (This part is optional, and would be much easier if you read the section on Ruby's random number generator at the end of the methods chapter.) You can't stop talking to grandma until you shout BYE.
    Hint: Don't forget about chomp! 'BYE'with an Enter is not the same as 'BYE' without one!
    Hint 2: Try to think about what parts of your program should happen over and over again. All of those should be in your while loop.
    Extend your Deaf Grandma program: What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: if you shout BYE three times, but not in a row, you should still be talking to grandma.
    Leap Years. Write a program which will ask for a starting year and an ending year, and then puts all of the leap years between them (and including them, if they are also leap years). Leap years are years divisible by four (like 1984 and 2004). However, years divisible by 100 are not leap years (such as 1800 and 1900) unless they are divisible by 400 (like 1600 and 2000, which were in fact leap years). (Yes, it's all pretty confusing, but not as confusing as having July in the middle of the winter, which is what would eventually happen.)

When you finish those, take a break! You've learned a lot already. Congratulations! Are you surprised at the number of things you can tell a computer to do? A few more chapters and you'll be able to program just about anything. Seriously! Just look at all the things you can do now that you couldn't do without looping and branching.

Now let's learn about a new kind of object, one which keeps track of lists of other objects: arrays.
