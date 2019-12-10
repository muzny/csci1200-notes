---
redirect_from:
  - "/06/5/nested-whileloops"
interact_link: content/06/5/nested_whileloops.ipynb
kernel_name: python3
has_widgets: false
title: 'Nested While Loops'
prev_page:
  url: /06/4/debugging_while_loops
  title: 'Debugging While Loops'
next_page:
  url: /07/lists
  title: 'Lists'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Nested `while` loops
===========

There are many cases when you want to have iteration happen *within* an iteration. In this case, we will "nest" our loops--put one loop inside of another loop.

```python
outer_loop_value = 0
while outer_loop_value < 10:
    print("Outer: " + str(outer_loop_value))
    outer_loop_value += 1
    inner_loop_value = 0
    while inner_loop_value < 5:
        print("Inner: " + str(inner_loop_value))
        inner_loop_value += 1
```

Notice that your inner `while` loop is entirely indented within the outer `while` loop.

Each time the outer loop iterates in this example (total of 10 times), the inner loop will iterate 5 times. 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. (this example is the same except the value in the range()
# function for the outer loop is smaller)
outer_loop_value = 0
while outer_loop_value < 2:
    print("Outer: " + str(outer_loop_value))
    outer_loop_value += 1
    inner_loop_value = 0
    while inner_loop_value < 5:
        print("Inner: " + str(inner_loop_value))
        inner_loop_value += 1

```
</div>

</div>



Notice that the inner loop "starts over" each time the outer loop iterates.

We can comupute the total number of times the inner loop iterates with the following formula: 

```python
total_inner_loop_iterations = outer_loop_iterations * inner_loop_iterations

total_inner_loop_iterations = 2 * 5 # for the cell block above
```



Nested `while` loops with an accumulator
-------------

Recall the [accumulator pattern](../3/while_accumulator.html) from the previous section. Any loop you have (whether it is an outer loop or an inner loop) can use the accumulator pattern.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
row = 0
while row < 5:
    s = ""  # 1) declare accumulator variable
    while len(s) < 3:
        # rememeber that += is the same as s = s + "*"
        s += "*"  # 2) update variable
    print(s)  # print result
    row += 1

```
</div>

</div>



In the above example, the variable `s` will be reset each time the outer loop iterates.

We could have produced the same output by using string multiplication in this instance:

```python
row = 0
while row < 5:
    s = "*" * 3 # number of columns
    print(s)
    row += 1
```

For some problems, we can't just use string multiplication though. Imagine that we want to write a function that prints output like the following:

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
    curr_row = 0
    while curr_row < rows:
        s = ""  # 1) declare accumulator variable
        column = 0
        while column < columns:
            s += str(column)  # 2) update variable
            column += 1
        print(s)  # print result
        curr_row += 1

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
    curr_row = 0
    while curr_row < rows:
        s = ""  # 1) declare accumulator variable
        column = 0
        while column < columns:
            s += str(curr_row + column)  # 2) update variable
            column += 1
        print(s)  # print result
        curr_row += 1

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

