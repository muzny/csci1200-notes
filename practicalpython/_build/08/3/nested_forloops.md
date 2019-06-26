---
redirect_from:
  - "/08/3/nested-forloops"
interact_link: content/08/3/nested_forloops.ipynb
kernel_name: python3
has_widgets: false
title: 'Nested For Loops'
prev_page:
  url: /08/2/accumulator
  title: 'For Loops and the Accumulator Pattern'
next_page:
  url: /09/modules
  title: 'Modules'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Nested `for` loops
===========

There are many cases when you want to have iteration happen *within* an iteration. In this case, we will "nest" our loops--put one loop inside of another loop.

```python
for outer_loop_value in range(10):
    print("Outer: " + str(outer_loop_value))
    for inner_loop_value in range(5):
        print("Inner: " + str(inner_loop_value))
```

Notice that your inner `for` loop is entirely indented within the outer `for` loop.

Each time the outer loop iterates in this example (total of 10 times), the inner loop will iterate 5 times. 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. (this example is the same except the value in the range()
# function for the outer loop is smaller)
for outer_loop_value in range(2):
    print("Outer: " + str(outer_loop_value))
    for inner_loop_value in range(5):
        print("Inner: " + str(inner_loop_value))

```
</div>

</div>



Notice that the inner loop "starts over" each time the outer loop iterates.

We can comupute the total number of times the inner loop iterates with the following formula: 

```python
total_inner_loop_iterations = outer_loop_iterations * inner_loop_iterations

total_inner_loop_iterations = 2 * 5 # for the cell block above
```



Nested `for` loops with an accumulator
-------------

Recall the [accumulator pattern](02_accumulator.ipynb) from the previous section. Any for loop you have (whether it is an outer loop or an inner loop) can use the accumulator pattern.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
for row in range(5):
    s = ""  # 1) declare accumulator variable
    for column in range(3):
        # rememeber that += is the same as s = s + "*"
        s += "*"  # 2) update variable
    print(s)  # print result

```
</div>

</div>



In the above example, the variable `s` will be reset each time the outer loop iterates.

We could have produced the same output by using string multiplication in this instance:

```python
for row in range(5):
    s = "*" * 3 # number of columns
    print(s)
```

For some problems, we can't though. Imagine that we want to write a function that prints output like the following:

```
01234
01234
01234
```

In this function we want to be able to vary how many rows there are and how many columns there are.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. Call the function!
# Notice that the step #2 for the accumulator variable
# uses the value column (the value that the inner loop is iterating over)

def numbers_string_box(rows, columns):
    for row in range(rows):
        s = ""  # 1) declare accumulator variable
        for column in range(3):
            s += str(column)  # 2) update variable
        print(s)  # print result

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
numbers_string_box(3, 5)

```
</div>

</div>



Now, what if we want to change our function from above to a function that prints output like the following:

```
01234
12345
23456
```

Notice that each number in this box is equal to `row + column`:

```
[0+0][0+1][0+2][0+3][0+4]
[1+0][1+1][1+2][1+3][1+4]
[2+0][2+1][2+2][2+3][2+4]
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. Call the function!
# Notice that the step #2 for the accumulator variable
# uses BOTH the value column AND the value row

def numbers_string_box(rows, columns):
    for row in range(rows):
        s = ""  # 1) declare accumulator variable
        for column in range(3):
            s += str(row + column)  # 2) update variable
        print(s)  # print result

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
numbers_string_box(3, 5)

```
</div>

</div>

