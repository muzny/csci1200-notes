---
redirect_from:
  - "/08/1/for-loops-basics"
interact_link: content/08/1/for_loops_basics.ipynb
kernel_name: python3
has_widgets: false
title: 'For Loops Basics'
prev_page:
  url: /08/for-loops
  title: 'For Loops'
next_page:
  url: /08/2/accumulator
  title: 'For Loops and the Accumulator Pattern'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`for` Loops
=======

A `for` loop is a control structure that we use to repeat certain pieces of code (and avoid all that copy-pasting).

__control structure__: a part of the language that allows us to dictate when and how (and how many times) certain pieces of code are run. We can consider functions to be one type of control structure. (Though they are so important that they just get to be called functions most of the time).

Let's take a look at the syntax of a `for` loop.

```python
for variable_name in [options_list]:
    # do things
    print(variable_name) # for example, print each element

print("done") # this is outside of the for loop
```

There are a few important pieces here:
1. `variable_name` this will be how we access the next value in the sequence that we are iterating over.
2. `[options_list]` this is a sequence of values. The `for` loop will iterate (repeat) once per value in this list.
3. __indentation__: notice that everything that we want repeated __must__ be indented "inside" the `for` loop. Once we return to our base level of indentation, the code will no longer be repeated.

Let's take a look at an example that we can run.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!

for color in ["red", "blue", "yellow"]:
    # imagine that there is a secret line of code here that says:
    # color = next color in the list
    print(color)
    
print("done!")  # how many times is this printed out?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What order are the values iterated over?
# Answer:

for number in [1.2, 2.0, -13.5, 100.34, 12.0]:
    print(number)
    print(number * 2) # what does this line do?
    
print("done!")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! How many "*" will be printed out?
# Answer:
for number in [1.2, 2.0, -13.5, 100.34, 12.0]:
    print("*")
    
print("done!")

```
</div>

</div>



`for` loops with `range()` 
------------

Remember when we made you explore the `range()` function earlier in the course? You may have wondered what possible use its wacky return value would serve.

```python
range_return = range(10)
print(range_return)  # range(0, 10)
print(type(range_return))  # <class 'range'>
```

It turns out that this function is __extremely__ useful (and extremely commonly used) with `for` loops!

Take a look at the following code:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
range_return = range(10)
print(range_return)  # range(0, 10)
print(type(range_return))  # <class 'range'>
print()
# Now look what happens
print(list(range_return))  # this line of code is a casting function to a list

```
</div>

</div>



We can use the `range()` function to easily produce long lists of integers that we can use to control how many times a `for` loop iterates.

Say, for example, that we want to repeat the same code 10 times:

```python
for num in range(10):
    print("yay!")
```

Say we want to repeat the same code 1000 times:
```python
for num in range(1000):
    print("yay1000!")
```

That's a whole lot easier than typing out a list with 1000 elements!

__parameters with `range()`__: you can pass the range function 1, 2, or 3 ints. Let's take a look.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: explore the parameter configurations of the range() function
for num in range(5):
    print(num)
    
# What number does this start at? end at?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
for num in range(2, 5):
    print(num)
    
# What number does this start at? end at?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# example 1
for num in range(1, 10, 2):
    print(num)
print("finish example 1")
    
# exmaple 2
for num in range(6, 18, 3):
    print(num)
print("finish example 2")
    
# What number does this start at? end at? what does the third number represent?

```
</div>

</div>



`for` loops over strings
-----------------

We can also iterate over strings as if they were lists of characters using a `for` loop.

```python
for letter in "my string":
    print(letter)
```

Notice that we can also iterate over a string that has been saved in a variable in this way.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
name = "Gwenivere"
for letter in name:
    print(letter)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
text = "spaces will also be iterated over"
for letter in text:
    print(letter)

```
</div>

</div>



Iterating over strings and lists using indices
------------------

Lastly, let's take a look at combining these strategies. We'll write for loops that do the same things as the examples above, but using the `range()` function and the `len()` function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
name = "Gwenivere"
for index in range(len(name)):
    print(index)  # the index
    print(name[index])  # the letter at this index

```
</div>

</div>



There are some instances in which we __must__ use this this strategy with strings. Say, for instance that we want to write a function that takes a string and returns the last half of that string to the user. (Without using tools that we haven't learned about yet).



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# this for loop uses something called the accumulator pattern
# we go into detail with this pattern in the next set of notes!
def last_half(word):
    new_word = ""
    for num in range(len(word) // 2, len(word)):
        new_word += word[num]
    return new_word

print(last_half("bambi"))
print(last_half("mulan"))

```
</div>

</div>

