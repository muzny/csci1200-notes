---
interact_link: content/07/4/slicing.ipynb
kernel_name: python3
has_widgets: false
title: 'Slicing'
prev_page:
  url: /07/3/strings_lists_mutating
  title: 'Strings, Lists, and Mutating'
next_page:
  url: /07/5/lists_scope
  title: 'Lists and Scope'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


String and list slicing
============

We've already learned about string and list indexing. Now we're going to look at slicing.

Indexing isolated __one element at a time__. Slicing isolates __0 or more elements__.

The syntax is: `variable[begin:end]` where `begin` is inclusive and `end` is exclusive.

Both `begin` and `end` are optional — if they are left out, this means "go from the beginning until ... " or "go from this index until the end".

Let's play around with this!



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[:4])
print(s[4:])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[0:6])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[0:len(s)])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[7:len(s)])

```
</div>

</div>



This technique becomes much more powerful when we combine it with the [string `find` method](https://docs.python.org/3/library/stdtypes.html#string-methods).

`str.find(value)` returns the lowest index that the element occurs at and -1 if it doesn't.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[s.find("t"):len(s)])

```
</div>

</div>



Slicing works exactly the same with lists as it does with strings!



Using negative numbers
-------------------

Python lets us access indices using negative numbers as well.

-1 maps to the last index, -2 to the second to last, etc.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[-1])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[-2])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[-2:])

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "super turtle"
print(s[:-2])

```
</div>

</div>

