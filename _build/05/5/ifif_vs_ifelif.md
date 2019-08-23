---
redirect_from:
  - "/05/5/ifif-vs-ifelif"
interact_link: content/05/5/ifif_vs_ifelif.ipynb
kernel_name: python3
has_widgets: false
title: 'if-then-if vs. if-elif Statements'
prev_page:
  url: /05/4/if_elif
  title: 'if-elif Statements'
next_page:
  url: /05/6/not
  title: 'not'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`if` then `if` vs. `if/elif` statements
==============

As we learned in the previous section, an `if` statement followed by an `elif` are parts of __the same control structure__.

```python
if logical_expression:
    # do something if logical_expression is True
elif logical_expression2:
    # do something if logical_expression is False
    # and also logical_expression2 is True
```

This might lead us to ask--what is the difference between an `if/elif` statement versus having two `if` statements in a row?

Let's take a look at some examples.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
# What is the output?

x = 100
y = 50

# ONE control statement
if x > 7:
    print("x greater than y")
elif x % y == 0:
    print("x is divisible by y")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
# What is the output?

x = 100
y = 50

# TWO control statements
if x > 7:
    print("x greater than y")
if x % y == 0:
    print("x is divisible by y")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write your own experiments to compare the output of 
# multiple if statements versus an if/else statement

```
</div>

</div>



We can compare the two by denoting them as follows:

`if/elif`
-------

```python
# ONE control statement
if logical_expression:
    # do something if logical_expression is True
elif logical_expression2:
    # do something if logical_expression is False
    # and also logical_expression2 is True
```

`if` then `if`
-------

```python
# First control statement
if logical_expression:
    # do something if logical_expression is True
# SECOND control statment
if logical_expression2:
    # do something if logical_expression2 is True
```

This is a common source of bugs in the programs we write that use conditionals!

__Rule of thumb__: If you only want **one** of a set of outcomes, use **one** `if/elif/else` control structure. If you want __0 or more__ of a set of outcomes, use __multiple__ `if/elif/else` control structures.

