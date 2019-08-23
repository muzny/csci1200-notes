---
redirect_from:
  - "/02/2/intro-python"
interact_link: content/02/2/intro_python.ipynb
kernel_name: python3
has_widgets: false
title: 'Introduction to Python and the print Function'
prev_page:
  url: /02/1/intro_computers
  title: 'Introduction to Computers'
next_page:
  url: /02/3/first_program
  title: 'Writing a Program'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Introduction to Python

Python is the programming language that we will be using. There are many different programming languages. Each language has its own *syntax* but all programming languages have the same goal--writing a program that the computer can translate into a series of operations to produce some output.

Syntax refers to how specifically we will write our statements (the words and punctuation that we will use).

Python programs are composed of a series of statements that are executed in order, from top to bottom.

In this section, we'll go over the `print` function, __comments__, and we'll start looking at __order of execution__. 

Note: We're using Python 3, so if you have experience with Python 2.7, you will see a few things that are [different](https://sebastianraschka.com/Articles/2014_python_2_3_key_diff.html).



## The `print` Function


In the previous [chapter about getting started with jupyter notebooks](../../01/1/intro_jupyter_notebooks.html), you saw the `print` function in some of the examples. Let's break an example down:

```python
print("hello")
```

In this example you can see that there are 3 different parts to the function (demonstrated by different colors and __bold__ text in these notes).

1. `print` this is the part of the function that says _what we want to do_.
2. `( ... )` the parentheses are indicating that this function takes an argument (see part 3).
3. `"hello"` this is what we call _the argument_. This is what we want to apply the function `print` to.
    1. Note: to print text, it's important that we put quotes around it here. We'll learn more about this in the [Data Types](../../03/1/data_types_operations.html) section of the notes.




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write a couple print statements here.



# TODO: what order are your print statements executed 
# in when you run the code?
# Answer:


```
</div>

</div>



Notice that when you execute a series of `print` statements, the text from each subsequent statement is output on the next line. This is because the `print` function automatically adds a "newline" character to the end of your text. Newline characters are what are produced when you are writing a text document and press the "return" or "enter" key to write on the next line. 



Comments
------
In the examples that we've shown you so far, there are certain lines in our blocks of code that begin with a `#` character. These lines are called  comments. Comments are parts of programs that _are not executed by the kernel_ but serve the extremely important purpose of giving clarification to the _people_ who are reading your code.

There are a few ways to create comments in python. The first way is with a `#` symbol. This makes it so that anything on the line __after__ the `#` is considered a comment.

```python
# this is a comment that is a whole line
print("this is a print statement")  # comment on a line with code
```

In the above example, the `print` statement would still be executed like normal. Luckily for us, our programming environment is going to help us out by color-coding our code to help us identify which parts of our code are actually going to be executed (non-comments) and which parts won't be (comments).

The second way to create a comment is for multi-line comments. Multi-line comments begin and end with three apostrophes, `'''`. Multi-line comments are typically used for larger descriptions.

```python
''' This is a multi-line comment
that can span as many lines 
as we want it to! '''
```

