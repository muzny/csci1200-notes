---
redirect_from:
  - "/07/6/lists-builtin-functions"
interact_link: content/07/6/lists_builtin_functions.ipynb
kernel_name: python3
has_widgets: false
title: 'Lists and Built-in Functions'
prev_page:
  url: /07/5/lists_scope
  title: 'Lists and Scope'
next_page:
  url: /08/for-loops
  title: 'For Loops'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Built-in Functions for lists
====================

In [section 4.3](../04_functions/03_builtin_functions.ipynb) we introduced python's built-in functions. We talked about a couple general functions like `input()`, `max()`, and `abs()` as well as some string specific functions like `str.islower()`, `str.capitalize()`, and `str.upper()`.

Now we are going to go over two types of built-in functions dealing with lists:
1. built-in functions that take lists as parameters. 
2. list functions that are built-in. (Called similarly to string functions.)



Built-in functions that take lists as parameters
-----------------------

Some of the [standard python built-in functions](https://docs.python.org/3/library/functions.html) can take lists as parameters. Here is a list of some of the most useful ones for this course.


[`max(list of values)`](https://docs.python.org/3/library/functions.html#max): notice that the first definition of the `max` function reads "max(iterable, \*[, key, default])". This means that the `max` function can take any type that can be iterated over (as with a for loop) as a parameter. The "\*" indicates that the rest of the parameters are optional.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# anything that we can put in the blank for the statement "for variable in ________" can be given to the 
# max function
print(max(range(2, 5)))
print(max("The quick brown fox jumped over the lazy dog."))
print([-4.3, -7, -12, -0.3])

```
</div>

</div>



The same goes for the `min` function. We also now get access to some fun new functions:

[`sum(iterable)`](https://docs.python.org/3/library/functions.html#sum): sums all values in the given iterable (like a list) and returns the resulting value.
 

[`sorted(iterable)`](https://docs.python.org/3/library/functions.html#sorted): sorts the values in the given iterable and returns a sorted list of those values.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: do some experiments with the sum and sorted functions!
# does sum work on strings? does sorted work on strings?
# does sum work on lists? does sorted work on lists?
# does sum work on the range function? does sorted work on the range function?

```
</div>

</div>



Our last *__extremely useful__* function that takes a list as a parameter that we'll talk about in this section of notes is a string function called `join`.

[`str.join(iterable)`](https://docs.python.org/3/library/stdtypes.html#string-methods): join the elements in the given iterable using `str` as glue inbetween the elements. Returns one single string. Elements in the iterable must be strings.

This method can be thought of as the opposite of the `str.split()` function. Instead of going from 1 string to a list of strings, it takes a list of strings and produces 1 string.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("glue".join(["here", "are", "words"]))
print(" ".join(["here", "are", "words"]))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: what happens if you try to use join on a list that contains elements that are not strings?

```
</div>

</div>



List functions that are built-in
----------------------

Similarly to strings, lists come with a [number of built-in functions](https://docs.python.org/3/tutorial/datastructures.html#more-on-lists). So far, we've only talked about `list.append()` and `del list[index]`.

There are a number of list functions here. We're going to concentrate on a couple of them:

`list.copy()`: return a copy of this list. Can also be written as `list[:]`.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
l = [2, 5, 6, 12]
k = l.copy() 
#k = l[:]  # this line is equivalent to the line above it
print(l)
print(k)
k[0] += 10
print(l)
print(k)

```
</div>

</div>



`list.count(value)`: return the count of the occurrences of `value` in `list`. Same as the string version of this function.

`list.index(value, [start index, [end index]])`: return the index that `value` occurs at in this list. You may optionally pass in a `start index` and an `end index` indicating what part of the list the search should occur at. Same as the string version of this function.

`list.sort()`: sort the items of the list __in place__. This is a __mutator__ function. It does not return a value



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: experiment with the above functions here!

```
</div>

</div>

