---
redirect_from:
  - "/09/1/using-modules"
interact_link: content/09/1/using_modules.ipynb
kernel_name: python3
has_widgets: false
title: 'Using Modules'
prev_page:
  url: /09/modules
  title: 'Modules'
next_page:
  url: /09/2/using_custom_modules
  title: 'Using Custom Modules'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Using Modules
=============

In python code, we may want to access functions that are not automatically included (unlike the built-in functions). There are a number of collections of functions that we can use by "importing their modules". A module is a collection of python functions.

A module might be provided by default with your installed of the python programming language, you might download a module that someone else has written, or you might even write your own module.

No matter which of these kinds of modules you are working with, how you use them will be almost exactly the same.



Taking a closer look: `random`
----------------
There many, many python modules but we will focus on one of them for the time being: `random`.

`random` will let us generate (pseudo) random numbers. (Generating a truly random number is *__extremely__* hard; most programming languages have default modules that generate *seemingly* random numbers.)

When we want to access the functionality of a module, we need to __import that module__.

Since these modules are provided with python by default, we don't need to install anything extra before we can access them. We do, however, need to say in our programs that we would like to access them!



Importing Modules
--------------

There are a number of ways to import modules. Let's get started by taking a look at the "most basic":

```python
import modulename   # goes at the top of your program

# you can access functions from the module later like this
modulename.functionname()
```

Let's take a look at a live example with [the random module](https://docs.python.org/3/library/random.html), using [the functions that it provides for integers](https://docs.python.org/3/library/random.html#functions-for-integers).



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
import random


# generate one random number between 0 (inclusive) and 5 (inclusive)
x = random.randint(0, 5)
print(x)

# generate one random number between 0 (inclusive) and 2 (exclusive)
y = random.randrange(0, 2)
print(y)

# generate one random number between 1 (inclusive) and 100 (exclusive)
# selecting from only the odd numbers
z = random.randrange(1, 100, 2)
print(z)


```
</div>

</div>



There are three other ways of importing modules that you may see:

1. `import module as name`: same as `import module`, but gives a "nickname" to the module so its functions would be accessed via `name.function()` rather than `module.function()`. It's fine with us if you use this strategy __so long as your name for the module is sensible__. This strategy is very useful when you are frequently accessing the functions in a module so that you don't have to type quite as much!

See the example below [using the calendar module](https://docs.python.org/3/library/calendar.html#module-calendar)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
import calendar as cal

# get the day number of the given year, month, day
# 0 is Monday, 1 is Tuesday, 2 is Wednesday, etc
day_num = cal.weekday(2019, 8, 26)
print(day_num)

# get a string calendar for a given year
c = cal.calendar(2019)
print(c)

```
</div>

</div>



2. `from module import *`: imports all functions from a module directly so you just use `function()` to call the functions rather than `module.function()`. __We prefer `import module` because it makes it clearer where our different functions are coming from__.

See the example below [using the math module](https://docs.python.org/3/library/math.html#module-math)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
from math import *

# return the ceiling of the given number
up = ceil(5.3)
print(up)

# is the sqrt function a default function or a math function?
root = sqrt(144)
print(root)

# what about the sum function?
s = sum([1, 2, 6, 99])
print(s)

```
</div>

</div>




3. `from module import specific_piece`: imports only the specified functions/objects from a module directly so you just use `function()` to call the functions rather than `module.function()`. __We prefer `import module` because it makes it clearer where our different functions are coming from__.

This is useful if a module is large and you onlky need one specific piece. See the example below using the `calendar` module.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
from calendar import weekday

# NOTICE that we no longer say calendar.weekday(params)
# get the day number of the given year, month, day
# 0 is Monday, 1 is Tuesday, 2 is Wednesday, etc
day_num = weekday(2019, 12, 12)
print(day_num)

```
</div>

</div>

