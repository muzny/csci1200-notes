---
redirect_from:
  - "/01/2/debugging-jupyter-notebooks"
interact_link: content/01/2/debugging_jupyter_notebooks.ipynb
kernel_name: python3
has_widgets: false
title: 'Debugging Jupyter Notebooks'
prev_page:
  url: /01/1/intro_jupyter_notebooks
  title: 'Introduction to Jupyter Notebooks'
next_page:
  url: /02/computers-and-python
  title: 'Computers and Python'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Debugging Jupyter Notebooks
=============

You might find that the code in one of your notebooks isn't quite running like you would expect it to. For python-specific errors and  debugging, see [the section on debugging python code](../../02/4/debugging_python_code.html).

In this notebook we're going to explore some of the weird things that can happen because we are using Jupyter Notebooks. We're going to pay special attention to the cells and the order in which we run them.

Remember from what we've learned about python that we must always declare a variable before we can use it.

```python
# Doesn't work! my_undeclared_variable hasn't been declared
print(my_undeclared_variable)  


# Does work!
my_undeclared_variable = 5
print(my_undeclared_variable)  
```

Now, let's take a similar example and look how it behaves in jupyter notebooks.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What is the output?
# Answer: 

my_var = 5
print(my_var)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What is the output?
# Answer: 

print(my_var)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What is the output?
# Answer: 

print(my_second_var)

```
</div>

</div>



What these examples show you is that when we are working with jupyter notebooks, variables *__persist across cells__*. If you run a cell that declares a variable, you can use that variable in subsequent cells! Neat!

A Nice Little Debugging Tool: whos
===========

Jupyter notebooks come with a nice debugging tool that we'll explore more throughout the course called `whos`. Let's go ahead and try it out.




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
whos

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run the cell above this one.

# TODO: add a comment to the cell above this one along 
# with the whos command. What error do you get?
# Answer:

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: change the value of the variable my_var, then run the whos command again in the cell below this one.
my_var = 1231

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
whos

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: What does this command tell us?
# Answer:

```
</div>

</div>



`whos` is a very useful tool for us to help track the state of our notebooks. Remember that you can't have any python code in the cell that you run it in! (This is because if there is python code, jupyter will think that all code in the cell is python. `whos` is not a python function, and thus you will get an error).



Cell Ordering Errors
==========

Unfortunately, this can cause what we will refer to as cell ordering errors. This happens when you run cells in an unintended order, producing results that you didn't expect.

These are important errors to watch out for because they can both cause you to believe that your solution is wrong when it isn't or that your solution is right when it isn't!

Luckily for us, jupyter provides some feedback and options to help us avoid these errors. The first tool is the `In [  ]:` indication to the left of our code cells. This indication tells us the _order in which we have run our cells_.

The second tool is the menu options in the "Cell" and "Kernel" menus.

Example #1: Forgetting to run a cell
------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Don't run this cell!
a = 9

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell without running the one above. What is the output?
# Answer: 

print(a)

```
</div>

</div>



When this error occurs, notice that the `In [  ]:` indication to the left of the first cell __stays blank__ whereas the `In [  ]:` indication to the left of the second cell does not. Note the number inbetween the brackets.


__Fixing this error (option 1)__:
The easiest way to fix this error is to run the first cell (the forgotten one), then to re-run the second cell. Notice how the numbers in the `In [  ]:` indications change.

For example, if the second cell had originally read `In [4]:`, when I run the first cell, it will then read `In [5]:`, and when I re-run the second cell it will read `In [6]:`.

__Fixing this error (option 2)__:
Another way to fix this error is to use the "Cell" menu. Click on the cell that is the last one that you want to run and then choose the option "Run all above". 

You can also select "Run all" to simply run all of the cells in the notebook from top to bottom. 

If we want to double check that one cell was run before another, we need to make sure that the numbers line up correctly!



Example #2: Accidentally running cells in reverse order
------------------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: don't run this cell yet! Run the cell below first. Once you've done that, what is the output of this cell?
# Answer: 
print(b)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Run this cell first, then run the one above with the print statement. 
b = 133

```
</div>

</div>



In this example, the first cell __doesn't cause an error when it should__. The fixes for this error are (luckily for us) exactly the same as the fixes for the first error.

Moral of the Story
===========

Whenever you are getting ready to turn in work that you've done in a jupyter notebook, you should *__always__* do two things before you turn it in: 

1. From the "Kernel" menu select "Restart & Run All". This will remove all variables that you have defined from the memory of jupyter notebooks and re-run all cells in top-to-bottom ordering.

2. Double check that your output is what you think it should be and that no errors occurred.

