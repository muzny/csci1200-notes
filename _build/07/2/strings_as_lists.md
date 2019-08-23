---
redirect_from:
  - "/07/2/strings-as-lists"
interact_link: content/07/2/strings_as_lists.ipynb
kernel_name: python3
has_widgets: false
title: 'Strings as Lists'
prev_page:
  url: /07/1/lists_basics
  title: 'Lists Basics'
next_page:
  url: /07/3/strings_lists_mutating
  title: 'Strings, Lists, and Mutating'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Strings as lists
==========

In many ways, strings act as a list of their composite characters. Let's compare:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
word = "hello"
word_as_list = ["h", "e", "l", "l", "o"]

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: same length?
print(len(word))
print(len(word_as_list))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: same indexing?
print(word[0])
print(word_as_list[0])
print(word[2])
print(word_as_list[2])
print(word[4])
print(word_as_list[4])

```
</div>

</div>



That's pretty much it for this section. When we learn about `for` loops, we'll see how we can treat lists and strings as the same in that context as well.

