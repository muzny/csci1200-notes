---
redirect_from:
  - "/03/1/data-types-operations"
interact_link: content/03/1/data_types_operations.ipynb
kernel_name: python3
has_widgets: false
title: 'Data Types and Operations'
prev_page:
  url: /03/datatypes-and-variables
  title: 'Datatypes and Variables'
next_page:
  url: /03/2/variables
  title: 'Variables'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Data Types
==========

In previous installments of these notes, we've alluded to something called "data types". All values in python have a _type_. Intuitively, the number 7 and the piece of text "saber-toothed tiger" are not the same type of value.

There are 4 basic (or primitive) types in python:

| type    | short name | example values                                                                                |
|---------|------------|-----------------------------------------------------------------------------------------------|
| integer | int        | -10, -7, -4, 0, 2, 13, 1117, 98372                                                            |
| float   | float      | -5.3, -4.0, -0.756, 0.0, 1.25, 12386.2                                                        |
| string  | str        | "hello", "sentences are strings",   "3.0", "remember to start your homework early!" |
| boolean | bool       | True, False                                                                                   |
 
There are some more types, but we can do a lot with just these 4 for now.

It's important for us to know about and understand the different types because certain operations are only allowed between certain types (for instance, we can't divide a `string` by another `string`, what would that even mean?) and because the behavior and structure of our programs is going to depend in part on the types of our variables.



Integers
----------

Integers are all whole numbers. As soon as there is a decimal point, the number is no longer an `int`, it's a `float` instead.

Note: Numbers that you might be used to writing with a comma (such as 1,000,000) are written as `1000000` in python. This is because python would try to interpret `1,000,000` as three separate numbers!

Floats
----------

Floats are all numbers with a decimal point. Even `1.0` and `6.0` and `-7.0`!

You may also hear floats referred to as "doubles". This is a second name that comes from the history of computers and programming languages. This is because floats and doubles represent two different ways to store high-precision (decimal) numbers behind the scenes. We don't have to worry about this because of advancements in computer architectures!

Strings
--------

In programming, we call all sequences of characters (letters, but including the numbers and symbols like `"1"` and `"@"`) strings.

Notice that there are *__always__* quotation marks around strings. It's important to know the difference because the int `3` acts very differently than the string `"3"`!

In python, we can enclose strings in either single quotes `'like this'` or double quotes `"like this"`.

See the [section on Strings](../4/strings.html) for lots more information about how special they are!


Boolean
---------

The name of these values comes from [George Boole](https://en.wikipedia.org/wiki/George_Boole) who developed Boolean algebra in _The Mathematical Analysis of Logic_ and _The Laws of Thought_ in the mid 1800s. It was named after Boole in the early 1900s.

Boolean values are *__only__* the values `True` or `False`. We can use them to represent all sorts of useful things like whether or not to execute a particular block of code. (We'll talk a lot more about boolean values later when we talk about conditionals.)





<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: print a value of each type
print(7)  # an example that prints an integer value


```
</div>

</div>



Operations
==========

Operations are used to combine two different values to calculate a single new value. In python, we have a number of operators, some of which are used in algebra and other math courses, and some of which are not!


|operator | name |
|---|---|
| + | plus |
| - | minus |
| * | times |
| \ | divide |
| \\\\ | double divide or integer divide |
| ** | power |
| % | modulus |

Let's play around!

Some of these operators are ones you probably haven't seen before—go ahead and play around with them.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.


5 + 9

# If you were to add another calculation below this one,
# we would only see the results of the second calculation.

# TODO: type a second calculation below this line and re-run the cell.



```
</div>

</div>



We "lose" the first value that we calculated because we haven't saved the result anywhere. In the next section (variables), we'll learn how to save values so that we can use them again in the future.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: What happens if you divide an integer (like 5) 
# by another integer (like 2) ?
# Answer:


```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: What happens if you __double divide__ an integer (like 5) 
# by another integer (like 2) ?
# Answer:


```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Investigate the ** operator. Compare and contrast it with 
# the * operator. What does this operator do?
# Answer:


```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Investigate the % operator. Compare and contrast it with 
# the // operator. What does this operator do?
# Answer:


```
</div>

</div>

