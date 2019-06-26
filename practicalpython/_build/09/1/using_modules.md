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
  url: /09/2/measuring_runtime
  title: 'Example: Measuring Runtime'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Using Modules
=============

In python code, we may want to access functions that are not automatically included (unlike the built-in functions). There are a number of collections of functions that we can use by "importing their modules". A module for us is a collection of python functions.

There many, many python modules but there are only two modules that we will focus on for the time being: `random` and `time`.

`random` will let us generate (pseudo) random numbers. (Generating a truly random number is *__extremely__* hard; most programming languages have default modules that generate *seemingly* random numbers.)

`time` will let us conduct experiments about how long it takes for different pieces of code to run.


There are a number of ways to import modules. We will use the "most basic":

```python
import module   # goes at the top of your program


module.function()  # you can access functions from the module later like this
```

Let's take a look at a live example with [the random module](https://docs.python.org/3/library/random.html), using [the functions that it provides for integers](https://docs.python.org/3/library/random.html#functions-for-integers).



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
import random


# we'll generate 10 random numbers
for i in range(10):
    num = random.randrange(0, 5)  # generate a random number between 0 (inclusive) and 5 (exclusive)
    print(num)

```
</div>

</div>



There are three other ways of importing modules that you may see:

`import module as name`: same as `import module`, but gives a "nickname" to the module so its functions would be accessed via `name.function()` rather than `module.function()`. It's fine with us if you use this strategy __so long as your name for the module is sensible__.

`from module import *`: imports all functions from a module directly so you just use `function()` to call the functions rather than `module.function()`. __We prefer `import module` because it makes it clearer where our different functions are coming from__.

`from module import specific_piece`: imports only the specified functions/objects from a module directly so you just use `function()` to call the functions rather than `module.function()`. __We prefer `import module` because it makes it clearer where our different functions are coming from__.



Writing our own modules
------------------

We'll talk about writing our own modules in the future! This is one of the reasons that we care so much about you using the `if __name__ == "__main__":` clause in your code!

