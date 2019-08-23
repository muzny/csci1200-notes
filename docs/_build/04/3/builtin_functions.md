---
redirect_from:
  - "/04/3/builtin-functions"
interact_link: content/04/3/builtin_functions.ipynb
kernel_name: python3
has_widgets: false
title: 'Built-in Functions'
prev_page:
  url: /04/2/using_functions
  title: 'Using Functions'
next_page:
  url: /04/4/writing_functions
  title: 'Writing Functions'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Built-in Functions
==========

See the previous section of these notes for information about how to use functions. This section is mostly a guide on what parameters and returns some (not all!) built in python functions take.



"Regular" built-in functions (non-string)
--------------
The [python documentation](https://docs.python.org/3/library/functions.html) for functions can be a bit confusing. Let's walk through an example by looking at the `len()` function:


`len(s)`

    Return the length (the number of items) of an object. The argument may be a sequence (such as a string, bytes, tuple, list, or range) or a collection (such as a dictionary, set, or frozen set).


This documentation talks about a lot of things that we don't know yet. That's ok!

The important parts:
1. `len(s)` -- this says that this function takes 1 parameter!
2. "Return the length (the number of items) of an object" -- this says that this function has a return value that is the length of the passed in parameter.
3. "The argument may be a sequence (such as a __string__, bytes, tuple, list, or range) or a collection (such as a dictionary, set, or frozen set)." -- this says what we can pass in to this function. __For us right now__, we just care that it says that we can pass in a string as a parameter.

Next, we'll provide some pared-down definitions of built-in functions for you that should be a little clearer, but you shouldn't be afraid of consulting the official python documentation!

If you ever have a question about documentation, feel free to post on piazza or come to office hours and we will help translate.

Note that the following definitions given are tailored specifically to where we are currently at in this course.



[`abs(value)`](https://docs.python.org/3/library/functions.html#abs): we're letting you explore this one on your own!



[`bool(value)`](https://docs.python.org/3/library/functions.html#int): returns the `float` version of the given value.



[`float(value)`](https://docs.python.org/3/library/functions.html#int): returns the `float` version of the given value.



[`input(prompt)`](https://docs.python.org/3/library/functions.html#input): prints out the given prompt, then waits for the user to enter input and returns it as a string.



[`int(value)`](https://docs.python.org/3/library/functions.html#int): returns the `int` version of the given value.



[`len(string)`](https://docs.python.org/3/library/functions.html#len): returns the length (`int`) of a given string



[`print(variable parameters)`](https://docs.python.org/3/library/functions.html#print): prints out a string representation of the given parameters to standard out. `print()` prints a new line. `print(7)` prints the `str()` version of `7`. `print(string1, string2, etc)` will print out all strings given separated by a space.



[`max(number1, [number2, number 3, etc])`](https://docs.python.org/3/library/functions.html#max): returns the maximum value among the arguments given. You can use this function with any number greater than or equal to one of arguments.



[`min(number1, [number2, number 3, etc])`](https://docs.python.org/3/library/functions.html#min): returns the minimum value among the arguments given. You can use this function with any number greater than or equal to one of arguments.



[`range(number1, [number2])`](https://docs.python.org/3/library/functions.html#range): ??? we're letting you explore this in Homework 2. We will tell you that the second number parameter is optional.



[`round(number, [places])`](https://docs.python.org/3/library/functions.html#round): returns the rounded version of the given number to the given number of places. The `places` parameter is optional. Both `round(number)` and `round(number, places)` work.



[`type(value)`](https://docs.python.org/3/library/functions.html#type): returns the data type of the given value.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: experiment with these functions!

```
</div>

</div>



Built-in `string` functions
----------------------
Here is the [python documentation for built-in string functions](https://docs.python.org/3/library/stdtypes.html#string-methods). We've provided some paired down descriptions below. Remember that the syntax for [using string functions](../2/using_functions.html#string-functions) is slightly different than for our regular built-in functions.



`str.capitalize()`: return a copy of the string with its first character capitalized and the rest lowercased.



`str.islower()`: return True if the string is all lower case and False otherwise.



`str.isupper()`: return True if the string is all upper case and False otherwise.



`str.lower()`: return a lower case version of the string



`str.upper()`: return an upper case version of the string



`str.count(value)`: return the number of times `value` occurs in `str`



`str.replace(value1, value2)`: return the `str` with all occurrences of `value1` replaced with `value2`



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: experiment with the string functions!

```
</div>

</div>

