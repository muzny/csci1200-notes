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
  title: 'Common While Loops Patters'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`while` Loops
=======

A `while` loop is a control structure (similar to how a conditional statement is a control structure) that we use to repeat certain pieces of code (and avoid all that copy-pasting).

We use while loops to repeat a block of code either a _predetermined_ number of times or an _unknown_ number of times.

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
# TODO: run me!

x = 0
while x < 10:
    print(x)
    x = x + 1  # what do you think would happen if we didn't include this line?
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What is the difference between this example and 
# the previous one?

x = 0
while x < 10:
    print(x)
    x = x + 2
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



The way that `while` loops work is that they iterate _while_ the test is `True`. You can verbalize this as (for example) "print out the even values of `x` while it is less than 10".



Updating
---------

When we write `while` loops it's very important that we include an update to the variable that we are testing in the `logical_expression`.

If we forget to do this, we will cause an __infinite loop__ from which our program will never ever ever exit.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me, but be ready to press the stop button!

x = 0
while x < 10: # x is never updated
    print(x)
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



A closer look at the `logical_expression`
-------------------

Our `logical_expression` is going to *__almost always__* (always for the purposes and intents of this class) involve testing the value of one or more variables against some other values. For instance, `x < 0` or `x != y`.

There are three important things to remember about the variable whose value you are testing:
1. Always __initialize__ its value _before_ the while loop.
2. Always __double check__ to make sure you are testing what you want to be testing.
3. Always have a statement that could __update__ the value of this variable somewhere in your loop.

Take a look at the following examples:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!

x = 100  # initialize
while x > 0: # double check this
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
while x > 0: # double check this
    print(x)
    value = int(input("Enter a number: "))
    if value >= 0:
        x = x - value  # doesn't always update, but CAN update
    
print("done!")  # how many times is this printed out?

```
</div>

</div>

