---
redirect_from:
  - "/07/1/lists-basics"
interact_link: content/07/1/lists_basics.ipynb
kernel_name: python3
has_widgets: false
title: 'Lists Basics'
prev_page:
  url: /07/lists
  title: 'Lists'
next_page:
  url: /07/2/strings_as_lists
  title: 'Strings as Lists'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Introduction to Lists
=========

Lists can get pretty complex, so we're going to start with the basics. A python list is fundamentally very similar to a list that you would write on a piece of paper. Lists have a certain number of items (elements) that are in a certain order. We can do things like access the 3rd element in the list, add a new item to our list, remove items from our list, and so on and so forth.

Let's define some vocabulary.

__list__: an ordered collection of values. Lists are a container type that holds other values.

__element__: a single item in a list.

__index__: the location of any given element.



Lists as Objects
----------------

Like strings, python lists are objects, meaning that they have __state__ (the sequence of values that they hold) and __behavior__ (list functions that we can use--we'll get into these later in this chapter). 

In this section, we'll concentrate on creating lists, finding how long they are, and accessing the elements. These are all topics that concentrate on the state of lists.



Creating Lists
---------

The syntax of creating a list is as follows:

```python
["cat", "dog", "zebra"]  # a list of strings
```

A list starts and ends with square brackets and each element in the list is separated with a comma.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What is the type of a list?
# Answer:
type(["cat", "dog", "zebra"])

```
</div>

</div>



We can save lists in variables just like other python data types:

```python
my_list = [2, 3, 7, 100, -1] # a list of ints
```

Lists can contain any other type that we want.

```python
my_list2 = [0.0, -2.3] # a list of floats
my_list3 = [True, False, False, False] # a list of booleans
```

Lists can have anywhere from 0 to many, many elements. Here is an example of a list with zero elements (we call this an __empty__ list, just like an empty string is a string with no characters):

```python
my_empty_list = []
```




We can even have lists that contain different data types all in one list:

```python
my_mixed_list = [1, "cat", True, 999.999]  # a list of mixed elements
```

In general, we want to avoid having lists of mixed types because it makes it more difficult to interact with the list. For example, say we want to find the average value of all elements in a list. How would we be able to do this if our list contained different types? What is the average of `1` and `"cat"`?



Lists - usage, length, indexing
----------------

Lists can be used wherever we use variables of other data types. They can be used as parameters to functions, they can be used as return values from functions, they can be used as local variables. The possibilities are many!

Practically speaking, lists are similar to (but not the same as!) `string`s in how we interact with them in 2 key ways.

1. Lists have lengths (number of elements). We can access this length with the `len()` function. Note that this function is a regular python built-in function, so just like with strings, we will pass the list that we want to find the length of to `len()` as a parameter.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: use the len() function to find the
# length of the lists declared below

my_list = [2, 3, 7, 100, -1] # a list of ints
my_list2 = [0.0, -2.3] # a list of floats
my_list3 = [True, False, False, False] # a list of booleans
my_empty_list = []

# for example
print(len(my_list))

```
</div>

</div>



2. Each element in a list has an index-the placement in the list that we can use to access the element. Lists are what we call "0-indexed". This means that the first element is at index 0. Let's take a look at an example.

__syntax of accessing elements__: to access an element, we type `list[index]`. Where `list` is the variable name where our list is stored.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python

# We've marked the indices in the comment below
#           0          1           2
list4 = ["wallaby", "koala", "Kookaburra"]
print(len(list4))  # this list has 3 elements
print(list4[0])  # access the first element
print(list4[1])  # access the second element
print(list4[2])  # access the second element
print(list4[3])  # What happens if you try to access an element that doesn't exist?


```
</div>

</div>



Creating Lists from Strings
--------------

It's very useful to be able to take a string and create a list out of it. Say, for example, that we want to separate a string into its composite words. We'll use the `str.split()` function to acheive this.

```python
sentence = "The quick brown fox jumped over the galactic destroyer"
words = sentence.split()  # no parameters means split on whitespace
```

Note that the `str.split()` function __returns__ a list so you must save it in a variable if you want to use it!



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: what are the values in the list words? what is its length?
sentence = "The quick brown fox jumped over the galactic destroyer"
words = sentence.split()  # no parameters means split on spaces

```
</div>

</div>



The `str.split()` function optionally takes a parameter that indicates what to split on. Run the following code snippets to explore this.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: explore splitting on different strings.
veggies = "broccoli,spinach,tomatoes,oranges?"
by_comma = veggies.split(",")
print(by_comma)
print(len(by_comma))
# experiment with splitting on other strings here!
by_a = veggies.split("a")
print(by_a)
print(len(by_a))

```
</div>

</div>

