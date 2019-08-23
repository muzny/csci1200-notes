---
redirect_from:
  - "/09/3/writing-modules"
interact_link: content/09/3/writing_modules.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing Modules'
prev_page:
  url: /09/2/using_custom_modules
  title: 'Using Custom Modules'
next_page:
  url: /09/4/measuring_runtime
  title: 'Example: Measuring Runtime'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Writing your own modules
====================

At its basis, a module is just python code. This means that we already have the skills to write a module of our own. Similarly to using custom modules, writing custom modules requires two steps.

Step 1: Create the `.py` file for your module
----------------------
For your module, you'll want to create a new `.py` file. The module name will be the name of the file before the `.py` part. If, for example, we wanted to create a module with some math functions inside of it, we might create the file `mymath.py`. Then, inside this file, we would write the definitions of the functions that we want to provide.

```python
# a small module containing one function

# This function adds the absolute values of
# two numbers together
# Params:
# int - the first number to add
# int - the second number to add
# Returns the sum of the absolute values of the two numbers
def add_absolute(num1, num2):
    abs_sum = abs(num1) + abs(num2)
    return abs_sum
```




Step 2: Import the module into your code
----------------------

To actually use and/or access 




`main` and `if __name__ == "__main__"`:
------------------

Another common programming pattern that you will likely encounter in python is when we hide the call to `main` in a guard that prevents the  main function from running if this code was imported as a module.


```python
def main():
    # code to run our program goes here
    
# two underscores precede and succeed "name" and "main" this is
# important that you type exactly like this
if __name__ == "__main__":
    main()
```

We'll talk more about the more techincal reasons that we do this when we talk about modules.

