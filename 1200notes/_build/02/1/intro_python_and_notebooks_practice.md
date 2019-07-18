---
redirect_from:
  - "/02/1/intro-python-and-notebooks-practice"
interact_link: content/02/1/intro_python_and_notebooks_practice.ipynb
kernel_name: python3
has_widgets: false
title: 'Introduction to python and Notebooks Practice'
prev_page:
  url: /02/datatypes-and-variables
  title: 'Datatypes and Variables'
next_page:
  url: /02/2/data_types_operations
  title: 'Data Types and Operations'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Introduction to Python
============

Python is the programming language that we are using in this course. We're using version 3, so if you have experience with Python 2.7, you will see a few things that are [different](https://sebastianraschka.com/Articles/2014_python_2_3_key_diff.html).

Python programs are composed of a series of statements that are executed in order, from top to bottom.

In this set of notes, we'll go over __comments__, the __print__ function, and __variable declarations__. 



Comments
------
In the examples that we've shown you so far, there are certain lines in our blocks of code that begin with a `#` character. These lines are called  comments. Comments are parts of programs that _are not executed by the computer_ but serve the important purpose of giving clarification to the _people_ who are reading your code.

There are a few ways to create comments in python. The first way is with a `#` symbol. This makes it so that anything on the line __after__ the `#` is considered a comment.

```python
# this is a comment that is a whole line
print("this is a print statement")  # comment on a line with code
```

In the above example, the `print` statement would still be executed like normal. Luckily for us, our programming environment is going to help us out by color-coding our code to help us identify which parts of our code are actually going to be executed (non-comments) and which parts won't be (comments).

The second way to create a comment is for multi-line comments. In this class, we won't use them very much, but they are nice to know about. Multi-line comments begin and end with three apostrophes, `'''`.

```python
''' This is a multi-line comment
that can span as many lines 
as we want it to! '''
```



The `print` Function
------------------

In the previous [chapter about getting started with jupyter notebooks](../01_jupyter_notebooks), you saw the `print` function in some of the examples. Let's break an example down:

```python
print("hello")
```

In this example you can see that there are 3 different parts to the function (demonstrated by the different colors).

1. `print` this is the part of the function that says _what we want to do_.
2. `( ... )` the parentheses are indicating that this function takes an argument (see part 3).
3. `"hello"` this is what we call _the argument_. This is what we want to apply the function `print` to.
    1. Note: to print text, it's important that we put quotes around it here. We'll learn more about this in the "Data types" section of the notes.





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



Variables and Variable Declarations
----------------
Variables are how our programs are going to remember information. Our variables have two parts: __names__ and __values__. When we create a variable we set its name and assign it an initial value.

```python
name = value
```

The name *__always__* goes on the left of the equals sign and the value *__always__* goes on the right of the equals sign. If you switch these you will get an error!

For example, if I want a variable called `age` to have the value `91`, I would write:

```python
age = 91
```

We can use any name for our variables as long as they begin with a letter. Ideally, we want names that are descriptive of the values that the variables hold. 

```python
my_var = 1
a = 2

# notice that we separate words with
# underscores to improve readability!
flying_purple_people_eater = 3 

secrets = 42
```

Once we've declared a variable, we can then use its value later in our program. For instance, if I want to print out the value of a variable, I need to pass the variable as the argument of the print function:

```python
print(variable)
```

So for our example with the variable `age`, a completed example would have the code:

```python
age = 91 # declare the variable first
print(age) # now I can print it out
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
age = 91 # declare the variable first
print(age) # now I can print it out

# TODO: run this cell. Does the print function print the name of the 
# variable or its value?
# Answer: 

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
a = 7
# TODO: write a line of code that prints the value of the variable a


```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write a line of code that declares a new variable and sets
# its value equal to 999


```
</div>

</div>



We can also do math with variables!  

Remember, we *__always__* have the variable name on the left and its value on the right. 

For instance:

```python
my_big_number = 100000 + 547362
my_small_number = -799 - 47
```

If we want to use a variable in a calculation, that's also okay:

```python
first_num = 54
second_num = first_num + 72
print(second_num)
```

Remember: variables must always be declared before you use them! 

We'll explore what kinds of math operations we can use with variables when we talk about data types.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
x = 10
y = -1
# TODO: write the code that creates a new variable and sets its 
# value equal to the sum of x and y. Then, print out the value of 
# that variable. Can you print out the sum of x and y without saving 
# the value in a variable first?


```
</div>

</div>

