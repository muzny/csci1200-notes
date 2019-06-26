---
redirect_from:
  - "/04/4/writing-functions"
interact_link: content/04/4/writing_functions.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing Functions'
prev_page:
  url: /04/3/builtin_functions
  title: 'Built-in Functions'
next_page:
  url: /04/5/writing_functions_parameters
  title: 'Writing Functions with Parameters'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Writing Functions
==========

Let's write and call our own functions. We'll start with functions that do not have parameters and do not have return values.

The basic format is:
```python
def function_name():
    # code here
    # notice that it is indented
    # everything indented here is inside this function
```

Python will give us an error if we try to define a function that is only comments and no code though, so let's define a function with a `print()` statement in it.

See [section 4.5](05_writing_functions_parameters.ipynb) for information on writing functions that include parameters.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! 
def dog():
    print("labradoodle")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# After you've run the cell above, you'll have the dog() function
# definition loaded up, now we can call this function
# Calling a function that you have written is the same as calling a built
# in function—the difference is that you can play with the implementation

# TODO: run me!

dog() # no return value, no parameters, so just function_name()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: define a function called cat and run it

```
</div>

</div>



Now, the real utility of functions comes when we put multiple lines or complex code in them, then call them many times so that we don't have to re-write all that code over and over again!



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell
def analyze_name():
    name = input("What is your name? ")
    name_len = len(name)
    print("Your name is " + str(name_len) + " characters long!")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: call the analyze_name function many times in a row, 
# then run this cell

```
</div>

</div>

