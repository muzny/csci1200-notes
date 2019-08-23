---
redirect_from:
  - "/06/1/while-loops-basics"
interact_link: content/06/1/while_loops_basics.ipynb
kernel_name: python3
has_widgets: false
title: 'While Loops'
prev_page:
  url: /06/iteration-and-loops
  title: 'Iteration and Loops'
next_page:
  url: /06/2/common_while_uses
  title: 'Common While Loops Patterns'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`while` Loops
=======

A `while` loop is a control structure (similar to how a conditional statement is a control structure) that we use to repeat certain pieces of code (and avoid all that copy-pasting).

We use while loops to repeat a block of code either a _predetermined_ number of times or an _unknown_ number of times.

When we say that something is happening a _predetermined_ number of times this could be two different scenarios:
1. There is a specific number that you, the programmer, knows and can write down. e.g. "I want to do task X 5 times"
2. There is a specific number that the code knows and can calculate. e.g. "I want to do task X once per letter in the user's input"

When we say that something is happening an _unknown_ number of times, this means that neither the programmer nor the code knows how many times that will be. Take a look at the following examples.
- "I want to do task X until the user enters the number zero"
- "I want to roll a 6-sided die until I get a 6"

In both of these scenarios, it is impossible for us to know or calculate how many times we'll need to complete task X ahead of time.



Syntax
-----

Let's take a look at the syntax of a `while` loop.

```python
while logical_expression:
    # do things
    print(1) # for example, print the number 1
    
print("done")  # this is outside the while loop
```

There are a few important pieces here:
1. `logical_expression` this will be how our program determines whether or not the loop needs to be run again. It's the same as a logical expression in an `if` statement!
2. __indentation__: notice that everything that we want repeated __must__ be indented "inside" the `while` loop. Once we return to our base level of indentation, the code will no longer be repeated.

Let's take a look at an example that we can run.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!

x = 0
while x < 10:
    print(x)
    # what do you think would happen if we didn't include this line?
    x = x + 1   # update the value stored in the variable x
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
# What is the difference between this example and 
# the previous one?

x = 0
while x < 10:
    print(x)
    x = x + 2   # update the value stored in the variable x
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



The way that `while` loops work is that they iterate _while_ the test is `True`. You can verbalize this example as "print out the even values of `x` while `x` is less than 10".



Updating
---------

When we write `while` loops it's *__very__* important that we include an update to the variable that we are testing in the `logical_expression`.

If we forget to do this, we will cause an __infinite loop__ from which our program will never ever ever exit.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code,
# but be ready to refresh this page to make the code
# stop running!
# If you are running this code in a jupyter notebook,
# be ready to press the stop button!

x = 0
while x < 10: # x is never updated
    print(x)
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



A "Standard" `while` Loop
----------------

Let's take the pieces that we've just gone over and combine them to create a "standard" formula for a `while` loop. Not all `while` loops will look exactly like this, but the vast majority will!

For this formula, we'll call the variable that we use to determine if the loop is done or not our "tracker" variable.

```python
tracker = value  # 1) initialize the tracker variable
while logical_expression: # 2) are we done? 
    # code that we want repeated goes here
    tracker = new_value  # 3) update the value of our tracker variable 
```

Let's take a moment to clarify each of these important steps:
1. __initialize__: we need to set our tracker variable to an initial value that will let our while loop begin. This must happen before ("outside") of the while loop. If we are repeating code 10 times, we might initialize this to 0, indicating that the loop has iterated 0 times so far.
2. __are we done?__: test the tracker variable's value against some other value. For instance, the test `tracker < 10` would say "run this loop until the value of `tracker` is 10 or more. Always double check this test!
3. __update__: make sure that inside your loop you update the variable that you are testing in step 2 in some way! If you leave this out, this will create an infinite loop! For our running example, this update would be `tracker = tracker + 1` or `tracker += 1`.

The examples from the outlined steps above would create a while loop as follows:

```python
tracker = 0  # 1) initialize the tracker variable
while tracker < 10: # 2) are we done? 
    # so that we can see the loop progressing in this example
    print(tracker)  
    tracker = tracker + 1  # 3) update the value of our tracker variable 
```  
    
    



A closer look at the `logical_expression`
-------------------

Our `logical_expression` is going to *__almost always__* (always for the purposes and intents of this class) involve testing the value of one or more variables against some other values. For instance, `x < 0` or `x != y`.

Remember to always double check for the three steps outlined in the section above:
1. __initialize__
2. __are we done?__ 
3. __update__

Take a look at the following examples:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!

x = 100  # initialize
while x > 0: # double check this test!
    print(x)
    x = x - (x % 3 + 1)  # this update will always run
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!

x = 100  # initialize
while x > 0: # double check this test!
    print(x)
    value = int(input("Enter a number: "))
    if value >= 0:
        x = x - value  # doesn't always update, but CAN update
    
print("done!")  # how many times is this printed out?

```
</div>

</div>

