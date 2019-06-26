---
redirect_from:
  - "/01/1/intro-jupyter-notebooks"
interact_link: content/01/1/intro_jupyter_notebooks.ipynb
kernel_name: python3
has_widgets: false
title: 'Introduction to Jupyter Notebooks'
prev_page:
  url: /01/using-jupyter-notebooks
  title: 'Using Jupyter Notebooks'
next_page:
  url: /01/2/debugging_jupyter_notebooks
  title: 'Debugging Jupyter Notebooks'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Welcome to the CSCI 1200 interactive notes and workbook!
=======

This set of notes is meant to supplement the lectures and lab materials.  
These notes are a great place to review concepts that we've been over in class and to play around with code.  


If you ever worry that you have deleted a part of one of these notebooks, or messed it up in some way, remember that you can always re-download them  from the course website!

For the links between notebooks to work in these notes, you need to preserve the structure that we provide (all week 1 notes in the `week_1` folder, all of the `week` folders located in the same parent folder).


Now, let's get down to business.



Anatomy of a Jupyter Notebook
-----------------
Jupyter Notebooks are centered around units called "cells". Cells are where you write code (and also where we are writing instructions now). We'll be writing code using the `python` programming language in this course.

In these notes you'll see code inserted in two different ways:  
1. embedded in text (non-interactive)  
`print("hello")` inline or in it's own block as below:

```python
print("ahoy")
```
2. in a cell (interactive! see below) 




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell.
print("greetings")

```
</div>

</div>



Notice that when code is in interactive cells, it has the text `In [  ] :` to the left of it. When we run a cell, this will update with the next number, starting with a 1. This is to help us keep track of the order that we have run our cells in.

Let's try running the code in the cell above and see what happens. There are many ways to run a cell in a jupyter notebook. Try to find at least two different ways. Watch how the number in the brackets of `In [  ] :` updates. (Hint: click on the cell that you want to run, then look at the "Cell" menu at the top of the page.)

You can modify the interactive cells to change what happens when they run. Try to modify the cell above this one with the `print` function so that it prints out a different word instead of "greetings".



What is a Kernel?
-----------

[Wikipedia](https://en.wikipedia.org/wiki/Kernel_(operating_system)) definition: The kernel is a computer program that is the core of a computer's operating system, with complete control over everything in the system.

__What you need to know__: The kernel is what is making it so that our jupyter notebooks run. Each notebook has a separate kernel so that code from separate notebooks don't cause problems with each other. The "Kernel" menu is what will let you restart your notebook if it starts not responding or if you want to double check that your answers are correct from a "clean" starting state (more on this in later course notes on debugging juptyer notebooks).



Completing Exercises
---------------

Sometimes in these notes and in the homeworks, there will be exercises for you to do. Notice that these are marked with the word "TODO" (to do) in comments. 


For instance, we might put in a cell for you edit the code in:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: edit this cell so that when you run it, it prints out your name
print("")

```
</div>

</div>



Sometimes, there will be exercises where you may be asked to fill in a blank or complete a sentence:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: fill in the blank
# When I run a print statement in a jupyter notebook, the output
# is printed _________ the cell.

print("The closests living relatives to the rock hyrax are elephants!")

```
</div>

</div>



Sometimes you will be asked to write code from scratch:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write the code that prints out your favorite animal

```
</div>

</div>



Sometimes you will be asked to answer a question:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: what are three different ways to run a cell in a jupyter notebook?
# (hint: 2 ways involve clicking on menus/buttons, 1 way uses the keyboard)
# Answer:

```
</div>

</div>



Editing these Notebooks
------
If you accidentally delete/change/etc a cell, use the "Edit" menu at the top of the page to help undo your change.

You can also use copy, paste, and undo shortcuts that you may be used to using in programs like Microsoft Word.

Similarly, you can save the changes to these notebooks, if for instance, you are working on an example and want to show your work to your TA the next day. The "File" menu has a saving option, there is a save button (the floppy disk icon), and you can also use the keyboard saving shortcut that you may be used to. 



Troubleshooting these Notebooks
---------

You may find that you ran a cell and it is taking much longer than it should. Rather than closing Jupyter Notebook, you can press the stop button (to the right of the run button just below the "Kernel" menu). What this will do is interupt the code that you were running, which can be very helpful.



Acknowledgements
==============

These notes have taken much inspiration from the interactive textbook How to Think Like a Computer Scientist by Brad MIller and David Ranum.

