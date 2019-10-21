---
interact_link: content/10/1/fileio.ipynb
kernel_name: python3
has_widgets: false
title: 'File input/output basics'
prev_page:
  url: /10/file-io
  title: 'File input/output'
next_page:
  url: /11/matplotlib
  title: 'matplotlib and Graphing'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


File input/output (i/o)
=============

__NOTE__: you need to run some of the "writing" code in this notebook in order for the "reading" code to work in this notebook in interactive mode!

It is frequently the case that we want to be able to interact with files programmatically. This is where file i/o comes in.

__input__: The file *being read/processed* by the program.  
__output__: The file that the program *produces*.

In python, we'll use the [`open()` function](https://docs.python.org/3/library/functions.html#open) to interact with files:

```python

file_obj = open(filename, mode)
# do things with the file_obj
file_obj.close()  # always close any files that you've opened!

```

The parameters and return value are as follows:
- `filename` : a string indicating the location of the file
- `mode` : a string indicating what we want to do with this file (the three modes we care about for this class are listed below)
    - "w" : write
    - "r" : read
    - "a" : append
- `file_obj` : the return value of this function is an object called a "TextIOWrapper" -- we'll refer to this as our "file object". See [notes 12.1](../12_extras/01_using_objects_part1.ipynb) for more information on objects. You can also look [at the python documentation](https://docs.python.org/3/tutorial/inputoutput.html#reading-and-writing-files) for more info on interacting with file objects.

Let's look at an example. For all of these examples, you should run them then go look at the contents of the file!



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This cell will create a file "course_notes_demo.txt"
# that is empty
f = open("course_notes_demo.txt", "w")
f.close()

```
</div>

</div>



Writing to files
----------

To write to a file in python, you need to do two things:
1. Use the `open(filename, mode)` function in the write mode ("w").
2. Use the `file.write(text)` function to actually write to the file. This function takes a string parameter to write to the file.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This cell will create a file "course_notes_demo.txt"
# What is in the file now?
f = open("course_notes_demo.txt", "w")
f.write("pineapples")
f.write("kiwis")
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This cell will create a file "course_notes_demo.txt"
# What is in the file now?
f = open("course_notes_demo.txt", "w")
f.write("mangos")
f.close()

```
</div>

</div>



Notice two things:
1. `file.write(text)` does __not__ include a newline character by default. 
2. If we open the file again in write mode, we will __overwrite__ the previous contents.



Appending to files
----------

To append to a file in python, you need to do two things:
1. Use the `open(filename, mode)` function in the append mode ("a").
2. Use the `file.write(text)` function to actually write to the file. This function takes a string parameter to write to the file.

__The difference between write and append is that append will *add* to the end of the file rather than overwriting the contents.__



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This cell will create a file "course_notes_demo.txt"
# What is in the file now?
f = open("course_notes_demo.txt", "a")
f.write("Fruits fruits fruits\n")
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This cell will create a file "course_notes_demo.txt"
# What is in the file now?
f = open("course_notes_demo.txt", "a")
f.write("veggies veggies veggies\n")
f.close()

```
</div>

</div>



Reading from files
----------

To read from a file in python, you need to do one thing, then you have lots of options:
1. Use the `open(filename, mode)` function in the append mode ("r").

There are three ways to read a file's contents that we will cover:
1. Use the `file.read()` function.
2. Use the `file.readline()` function.
3. Use a loop. (This can be a `for` loop or a `while` loop!)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! 
# What happens?
f = open("course_notes_demo.txt", "r")
print(f.read())  # returns the entire contents of a file as one string
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! 
# What happens?
f = open("course_notes_demo.txt", "r")
print("first:" + f.read())  
print("second: " + f.read())  # what if we do it again?
f.close()

```
</div>

</div>



Imagine that when we are reading the file, we are advancing a cursor through its contents. Which function we use just determines how far through the file we advance the cursor each time. If we've already read data in, unless we close and re-open the file (or use some different functions that we won't talk about here), we won't be able to read it again.

The `file.readline()` function advances our cursor one line at a time.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
# What happens?
f = open("course_notes_demo.txt", "r")
print(f.readline())  # returns the first line
print(f.readline())  # returns the second line
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! 
# What happens if you try to readline when you've 
# already reached the end of the file?
f = open("course_notes_demo.txt", "r")
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
print(f.readline())
f.close()

```
</div>

</div>



`while` loop examples
----------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This is the last way we'll cover in this notebook
# to read the contents of a file
f = open("course_notes_demo.txt", "r")
line = f.readline()
while line:
    print(line)
    line = f.readline()
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What happens if we add a second line = f.readline()?
f = open("course_notes_demo.txt", "r")
line = f.readline()
while line:
    print(line)
    line = f.readline()
    line = f.readline()
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
# What happens if the file that we try to open doesn't exist?
f = open("doesntexist.txt", "r")
f.close()

```
</div>

</div>



`for` loop examples
-------------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! This is the last way we'll cover in this notebook
# to read the contents of a file
f = open("course_notes_demo.txt", "r")
for line in f:
    # imagine that at the beginning of this list there is code
    # that says
    # line = f.readline()
    print(line)
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What happens if we uncomment the line = f.readline()?
f = open("course_notes_demo.txt", "r")
for line in f:
    line = f.readline()
    print(line)
f.close()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
# What happens if the file that we try to open doesn't exist?
f = open("doesntexist.txt", "r")
f.close()

```
</div>

</div>

