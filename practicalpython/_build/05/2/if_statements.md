---
redirect_from:
  - "/05/2/if-statements"
interact_link: content/05/2/if_statements.ipynb
kernel_name: python3
has_widgets: false
title: 'if Statements'
prev_page:
  url: /05/1/logical_expressions
  title: 'Logical Expressions'
next_page:
  url: /05/3/if_else
  title: 'if-else Statements'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`if` statements / conditionals / selection statements
===========

An `if` statement is a control structure that we use to create branches in our code. This means that our code can do one thing under certain circumstances and another thing under different circumstances.

__control structure__: a part of the language that allows us to dictate when and how (and how many times) certain pieces of code are run. We can consider functions to be one type of control structure. (Though they are so important that they just get to be called functions most of the time).

Let's take a look at the syntax of an `if` statement:

```python
if logical_expression:
    # do something
```

For instance, take a look at the code in the following cell.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! Under what circumstances is "big number" printed out?
# Answer:

number = int(input("number? "))

if number > 100:
    print("big number")
    
print("done")

```
</div>

</div>



`if` statements are like forks in the road for our code. If the logical expression evaluates to `True`, the code within the statement (indented) will be run, otherwise it won't be. When the code inside the statement finishes running, the program continues executing as normal from the end of the statement.

![if statement as a flowchart](if_chart.png)



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write your own if statement here!

```
</div>

</div>

