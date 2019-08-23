---
redirect_from:
  - "/02/3/first-program"
interact_link: content/02/3/first_program.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing a Program'
prev_page:
  url: /02/2/intro_python
  title: 'Introduction to Python and the print Function'
next_page:
  url: /02/4/debugging_python_code
  title: 'Debugging Python Code'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Writing a Program

A program is any number of statements to be executed together that produces a certain behavior. We might write a program that performs a math operation, such as converting a temperature in Fahrenheit to Celius, we might write a much larger program that attempts to extract figurative language from a novel, or we might write a program with the intention of doing something else entirely.

We'll start by writing a program that is composed entirely of `print` statements. We'll use this as an example to look at a few very important parts of python and programming in general.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("This is a program.")
print("It has three print statements.")
print("They are executed from top to bottom.")

```
</div>

</div>



Feel free to modify this program so that when you run it, it prints something else entirely. In the future, we'll learn how to make our programs more interactive!



## Breaking our Code

Now that we've written a program, it's time to break it! Breaking our code helps us see what can go wrong when we are writing programs. Even people with a lot of programming experience write code that doesn't work for various reasons so it's important to know what broken code looks like and how to go about fixing it!



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code
# Notice that the first print statement is 
# missing the " and ) at the end! 
print("This is a program.
print("It has three print statements.")
print("They are executed from top to bottom.")

```
</div>

</div>



When our code breaks, it often "throws an error". There are different kinds of errors that depend on what caused the code to break.

Your first thought may be that errors being thrown is bad--while it's true that they do prevent your code from running, they are actually incredibly valuable in that they tell you what is wrong with your code.

See if you can fix the error that was thrown in the code snippet above. In the [next section](../4/debugging_python_code.html) of these notes, we'll break down the error messages in more detail as well as cover some of the most common types of errors.



## A Note on "whitespace"

In programming, we refer to all characters that exist but are blank (spaces, tabs, returns) as "whitespace". Whitespace is significant in python. This means that if the indentation of a line of code is incorrect, your program will either throw an error or it will have different behavior than you intended.

We'll dive into this more in the future when we're writing more complex programs.

For now, all of our lines of code should be at the "0-indentation level". This means that they should all begin on the left-hand side of the coding area.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("This print statement is at 0-indentation level")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Notice that having code that looks like this in python will 
# throw an error!
print("This print statement is at 0-indentation level")
    print("This print statement is NOT at 0-indentation level")

```
</div>

</div>

