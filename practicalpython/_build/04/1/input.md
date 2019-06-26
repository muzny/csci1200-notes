---
interact_link: content/04/1/input.ipynb
kernel_name: python3
has_widgets: false
title: 'Input and Using Functions'
prev_page:
  url: /04/functions
  title: 'Functions'
next_page:
  url: /04/2/using_functions
  title: 'Using Functions'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


The `input` Function
==============

The `input()` function is a very useful tool for making your programs interactive. 

Here is an example usage of this function:

```python
color = input("What is your favorite color? ")
```

Let's break down this function similarly to how we broke down the [print function](../02_datatypes_variables/01_intro_python_and_notebooks_practice.ipynb).

The first 3 elements of the `input` function are the same as the `print` function:

1. `input` this is the part of the function that says _what we want to do_.
2. `( ... )` the parentheses are indicating that this function takes an argument (see part 3).
3. `"What is your favorite color? "` this is what we call _the argument_. This is the prompt that we want to display to the user.
    1. Note: don't forget your prompt! If you put nothing here, you will get confusing behavior.
4. *__NEW__* `color = ` this is a variable that _saves the return value_. We'll break this part down more after we run the function to see what it actually does.

The General Form
-----------
We can write a general form of how to use this function as:

```python
variable = input(prompt)
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell!
# When you run this cell, there will be a text box where you can type.
# To give answer, type in your color, then press the return key.
color = input("What is your favorite color? ")
print("You answered: " + color)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Run this cell!
# This cell demonstrates the confusing behavior of input if you
# forget to put in a prompt

mystery = input() # I've forgotten a prompt!

# Notice that when no prompt is given, the cell just "hangs" (keeps running)
# without telling the user what to do!

```
</div>

</div>



The Return Value
-------------------

Let's dive deeper into part 4 of this function — the part where we save the return value.

__return value__: a value given back to the program ("returned") by a function.

If you want to use a return value, it *__must always be saved in a variable__*.

Let's look at what happens when we run the following code behind the scenes:

```python
color = input("What is your favorite color? ")
print("You answered: " + color)
```

1. The `input` function gets executed, printing "What is your favorite color? ".
2. The user types an answer to this question, then presses return.
3. Pressing return indicates to the program that whatever the user typed should be the __return value__.
4. The __return value__ gets stored in the variable `color`.
5. The `print` function concatenates the value of the variable `color` to the end of the string "You answered: " then prints out the entire string.

For example, if the user answers "purple":

1. The `input` function gets executed, printing "What is your favorite color? ".
2. The user types "purple", then presses return.
3. Pressing return indicates to the program that "purple" is the __return value__.
4. The string "purple" gets stored in the variable `color`.
5. The `print` function concatenates the value of the variable `color` ("purple") to the end of the string "You answered: " then prints out the entire string ("You answered: purple").

Notice that the return value has a type: "purple" is a `string`.

_All_ return values have types.

The `input` function *__always always always__* returns a `string`. No matter what. ALWAYS.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. Answer the question with a number.
age = input("How old are you? ")
print(type(age))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Add code to this cell so that the type of the variable age
# becomes an integer, then run the cell. 
age = input("How old are you? ")

# add code here to change age to an integer


print(type(age))

```
</div>

</div>



Type Casting + `input`
-------------------

When we are using the `input` function, we frequently use [type casting](../02_datatypes_variables/03_casting.ipynb) to help convert the user's answer to the type that we actually want so that, for instance, we can do math.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What error do you get?
# Fix the error by adding the appropriate type casting function
temp = input("What temperature is it outside (celsius)? ")  

kelvin = temp + 273.15

# notice the cast of the variable kelvin to a string — necessary so that
# we can concatenate its value with other strings!
print("It's " + str(kelvin) + " degrees kelvin!") 

```
</div>

</div>



What to never ever do
---------------------

If you happen to write code that doesn't save the return value, you will not be able to access that information:

```python
input("How old are you? ")
print(age)  # what is this variable? where did it come from? ERROR
```

A more devious example:
```python
age = "27"
input("How old are you? ")
print(age)  # No error! but NEVER the user's answer to the question
```

