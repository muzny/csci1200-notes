---
interact_link: content/05/6/not.ipynb
kernel_name: python3
has_widgets: false
title: 'not'
prev_page:
  url: /05/5/ifif_vs_ifelif
  title: 'if-then-if vs. if-elif Statements'
next_page:
  url: /06/iteration-and-loops
  title: 'Iteration and Loops'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`not`
=========

In [the first section of this chapter](../1/logical_expressions.html), we talked about the logical operators `and` and `or`. There is one that we left out--`not`.

`not` acts a little bit differently than `and` and `or`.

We can think of `and` and `or` as taking two boolean values and combining them into one boolean value.

```python
print(True and True)   # True
print(True and False)  # False
print(False and True)  # False
print(False and False)  # False


print(True or True)   # True
print(True or False)  # True
print(False or True)  # True
print(False or False)  # False
```

The `not` logical operator takes __one__ boolean value and switches it to the opposite value.

```python
print(not True)   # False
print(not False)  # True
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
print(not True)

```
</div>

</div>



The place where this gets complicated is when we use `not` in combination with other comparison and logical operators. This is because the portion of the logical expression affected by `not` is not always obvious.

Make a guess as to how the following expressions will evaluate before running them.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: guess the result of this expression, then run it!
# Guess:
# Actual:

print(not 7 < 2)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: guess the result of this expression, then run it!
# Guess:
# Actual:

print(not 7 < 2 and 5 < 10)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: guess the result of this expression, then run it!
# Guess:
# Actual:

print(not 7 < 2 and 5 > 10)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: guess the result of this expression, then run it!
# Guess:
# Actual:

print(not False == True and 5 < 10)

```
</div>

</div>



`not` is going to only apply to the __first__ boolean value to the right of it (unless you use parentheses).

`not`'s precendence is going to be __higher__ than `and` and `or` but __lower__ than our comparison operators.

