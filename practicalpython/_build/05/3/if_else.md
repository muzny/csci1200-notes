---
redirect_from:
  - "/05/3/if-else"
interact_link: content/05/3/if_else.ipynb
kernel_name: python3
has_widgets: false
title: 'if-else Statements'
prev_page:
  url: /05/2/if_statements
  title: 'if Statements'
next_page:
  url: /05/4/if_elif
  title: 'if-elif Statements'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`if/else` statements
==============

`if` statements have multiple ways that we can customize them (other than changing the logical expression): the first of these ways is by adding an `else` clause to our statement.

The syntax of `if/else` statements is:

```python
if logical_expression:
    # do something
else:
    # do something different
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! Under what circumstances is "big number" printed out?
# What about "small number"?
# Answer:

number = int(input("number? "))

if number > 100:
    print("big number")
else:
    print("small number")
    
print("done")

```
</div>

</div>



Notice that what makes this statement different than [in the previous section](02_if_statements.ipynb) is that either "big number" or "small number" is _always_ printed. After one of the two is printed, then we finish by printing "done".

We can think of this as a fork in the road that has a left and right option for paths that then rejoin each other.

![if/else statement as a flowchart](if_else_chart.png)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write your own if/else statement here!

```
</div>

</div>

