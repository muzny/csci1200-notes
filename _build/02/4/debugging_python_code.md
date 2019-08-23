---
redirect_from:
  - "/02/4/debugging-python-code"
interact_link: content/02/4/debugging_python_code.ipynb
kernel_name: python3
has_widgets: false
title: 'Debugging Python Code'
prev_page:
  url: /02/3/first_program
  title: 'Writing a Program'
next_page:
  url: /02/5/file_types
  title: 'File Types and Python'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Debugging our code: reading error messages
======================







<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell!
print(y)

```
</div>

</div>



When you get an error message, you'll see something similar to what is below:

```python
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-1-d9183e048de3> in <module>()
----> 1 print(y)

NameError: name 'y' is not defined

```

There are a couple important parts of this error message that help tell you what caused your code to crash.

1. The type of error. In this case, a `NameError` has occurred. This appears at the top and bottom of this message. (`NameError: name 'y' is not defined`)
2. Extra information. Look at `NameError: name 'y' is not defined`. The setence after `NameError` tells us the problem--there is a variable `y` that is not defined.
3. Where it occurred. `----> 2 print(y)` tells us the line that the error occurred on. It has both the line number (`2`) and the actual code on that line (`print(y)`).

Whenever you have an error, you should look at these 3 things. In this case, the error helps tell us that on line 2, we are attempting to use a variable, `y` that is not defined (we forgot to set `y = value` beforehand!).



(Some) Types of Errors
--------------
(general) descriptions of errors that you may encounter and what (normally) causes them.

`SyntaxError`: this is caused by typing "illegal code"; something that you may think is python but isn't quite. Can also be casue by typos in keywords.

`NameError`: caused by either referencing a variable or a function that doesn't exist where you are trying to use it. Misspelling variable names and function names also causes this error.

`IndentationError`: caused by either not indenting where you need to or indenting where you shouldn't. Can also be cause if you mix tabs and spaces together! If you think that your indentation is correct, we recommend re-doing it (deleting the spacing that you have and re-indenting).

`TypeError`: caused by attempting to use a value of a certain type in an illegal way. This is the error that you get if you, for instance, try to do `8 + "cats"`.

`ValueError`: caused by trying to do an illegal cast (`int("cats")`).



Debugging our code: using comments
==================

Comments can be extremely useful to help us find problems in our programs or to tweak our solutions. We can do this by "commenting out" code.

For example, if you have a program that is giving you an error as in the cell below:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell.
# look at the error message and commment out the offending line. 
# Re-run the cell. Repeat this process until there are no errors.

# Finally, edit your commented out lines and un-comment them to fix the errors.
# This allows us to see what other code might be causing errors.
x = 12
y = z + x
print(x)
print(y)

```
</div>

</div>



Debugging our code: using `print`s
==================

The `print` function can be very helpful for debugging, especially when our code is running but we aren't getting the answer that we expect.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. Is the answer the one expected?
# Use print commands to see at what point the value of a is different
# than we expect. (Expected values shown in comments)

a = 10
a = a * 45  # 450
a = a // 8  # 56.5
a = a + 5 * 3  # 184.5
print(a) # 184.5

```
</div>

</div>

