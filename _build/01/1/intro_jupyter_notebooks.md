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


# Anatomy of a Jupyter Notebook

Jupyter Notebooks are centered around units called __cells__. 

__cell__:  an editable area where you write blocks of code or text. 

We'll be writing code using the `python` programming language in this course, but Jupyter Notebooks can run code in many different programming languages.

A single notebook is composed of a series of one or more cells. Running a notebook entails running the cells that it contains.



## Controlling cells

### Cell types
when you select a cell, it can be one of four different types: `Code`, `Markdown`, `Raw NBConvert`, or `Heading`. The drop-down menu at the top of the page will show you what type the current cell is and allow you to change it if necessary.

Notice that when a cell is a code cell, it has the text `In [  ] :` to the left of it. If it doesn't have this text, that means that this cell is not a code cell and will not execute as you expect if you try to run it! (It won't break anything, it just won't run your code as python code!)

We write our text instructions in your notebooks in `Markdown` cells, which allows us to write formatted text that can be __bold__, *italic*, etc. 



### Running cells
When we "run a cell", what we are doing is *executing the code* that a cell contains. Each cell is run independently (running one cell will not run code in another cell).

Notice a few things that happen when we run a cell:
- the `In [  ] :` text updates so that it contains the next number, starting with a 1. This is to help us keep track of the order that we have run our cells in.
- any output that the code in the cell produces appears in the non-editable area beneath it.
- any errors that the code in the cell produces appears in the non-editable area beneath it.

Try copy+pasting the code below into a cell in a notebook and see what happens when you run it. There are many ways to run a cell in a jupyter notebook. Try to find at least two different ways. Watch how the number in the brackets of `In [  ] :` updates. (Hint: click on the cell that you want to run, then look at the "Cell" menu at the top of the page.)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("greetings")

```
</div>

</div>



## What is the Kernel?

[Wikipedia](https://en.wikipedia.org/wiki/Kernel_(operating_system)) definition: The kernel is a computer program that is the core of a computer's operating system, with complete control over everything in the system.

__What you need to know__: The kernel is what is executing the code in our notebooks. It is what takes code like `print("hello")` and makes it so the program outputs the text "hello". You must have a running kernel to execute the code in your notebook. For this course, your kernel should always be `Python 3`. This is indicated in the upper right-hand side of the notebook, next to a circle that changes to tell you the status of the kernel (idle, running, etc).

Each notebook has a separate kernel so that code from separate notebooks don't cause problems with each other. The "Kernel" menu is what will let you restart your notebook if it starts not responding or if you want to double check that your answers are correct from a "clean" starting state (more on this in later course notes).



Completing Exercises
---------------

Sometimes in these notes and in the homeworks, there will be exercises for you to do. Notice that these are marked with the word "TODO" (to do) in comments. 


For instance, we might put in a cell for you edit the code in:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: edit this cell so that when you run it,
# it prints out your name
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
# is printed _________ (above/below) the cell.

print("The closest living relatives to the rock hyrax are elephants!")

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
# (hint: 2 ways involve clicking on menus/buttons,
# 1 way uses the keyboard)
# Answer:

```
</div>

</div>



## Editing Jupyter Notebooks

If you accidentally delete/change/etc a cell in a notebook, use the "Edit" menu at the top of the page to help undo your change.

You can also use copy, paste, and undo shortcuts that you may be used to using in programs like Microsoft Word.

Similarly, you can save the changes to notebooks, if for instance, you are working on an example and want to show your work to your TA the next day. The "File" menu has a save, there is a save button (the floppy disk icon), and you can also use the keyboard saving shortcut that you may be used to.

The status of whether or not there are unsaved changes is shown to the right of the file name.

