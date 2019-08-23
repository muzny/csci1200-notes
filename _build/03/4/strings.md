---
interact_link: content/03/4/strings.ipynb
kernel_name: python3
has_widgets: false
title: 'Strings'
prev_page:
  url: /03/3/casting
  title: 'Casting'
next_page:
  url: /04/functions
  title: 'Functions'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Strings
=======

Python strings are  what we call __objects__, meaning that they have both state *and* behavior. In contrast, data types like `int`, `float`, and `bool` only have a single value.

When we say that strings have state and behavior, we are referring to two important properties of strings:
1. state--strings are a certain sequence of characters in a certain order. We can think of this as the value of the string.
2. behavior--strings can do things, like tell us whether or not they are uppercase or count the number of times a certain character occurs in them.


In this section, we'll look at how to put special characters in strings and accessing specific characters in a string (for instance, the 3rd character). These are all topics associated with the state of a string.

To learn more about string behavior, see the [section on using string functions](../../04/2/using_functions.html#string-functions).



Escaping Characters in Strings
-----------

Also known as: including special characters in strings.

Some characters won't work for us to just type into a string. For instance, what if our string includes quotation marks? What if our string spans multiple lines? What if our string needs to include a tab character?

To put these characters into strings, we will need to __escape__ them. This means that we will write them in a special format so that python knows what we want in the string while still being able to type it as a regular string. Our escape character is the backslash `\`. We will type the backslash before the character that we'd like to escape. For instance, to print `"`, we'll type `"\""`.

Say we'd like to print the string: `they said "hello"`.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# one strategy is to use single quotes around the string
print('they said "hello"')  

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# the other strategy is to _escape_ the quotes using a backslash
print("they said \"hello\"") 

```
</div>

</div>



Our most important characters that we'll need to escape are:
- `\"`: a double quote
- `\'`: a single quote
- `\n`: a newline 
- `\t`: a tab

Challenge: how do you think that you could print a backslash itself?

Take a look at the following print statements and consider what you think they'll print, then run the code.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("they didn't say \"goodbye\"")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print('they didn\'t say "goodbye"')

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("super\ncali\nfragilistic\n\nexpialidocious")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print("super\tcali\tfragilistic\n\texpialidocious")

```
</div>

</div>



String Indexing
-----------------

String indexing is how we talk about accessing a specific character in a string. Since strings are made of a sequence of characters in a specific order, we'd like to be able to access the 1st, 2nd, 3rd, etc character of the string.

Let's take a look at the following string:


| - |-  | - | - | - | - |-  |-  | 
| --- | ---| --- | --- | --- | --- | --- | --- |
| d | i| n | o | s | a | u | r |



Strings are a good example of something that is very common in computer science, which is that they are __0-indexed__, meaning that each character has an index (where it occurs in the string) and that the indices start at the number zero.

|0 | 1| 2 | 3| 4 | 5 | 6 | 7 |
| --- | ---| --- | --- | --- | --- | --- | --- |
| d | i| n | o | s | a | u | r |

This string has 8 characters that go from index 0 to index 7.

To access a character at a given index, we use the syntax `string_variable[index_number]`.

Take a look at the following code:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Play around with the integer value between the square brackets

s = "dinosaur"
print(s[0])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# What happens if we give an index value for an index that doesn't
# exist in the string?
# Answer:

s = "dinosaur"
print(s[8])

```
</div>

</div>

