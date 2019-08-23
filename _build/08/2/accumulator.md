---
interact_link: content/08/2/accumulator.ipynb
kernel_name: python3
has_widgets: false
title: 'For Loops and the Accumulator Pattern'
prev_page:
  url: /08/1/for_loops_basics
  title: 'For Loops Basics'
next_page:
  url: /08/3/nested_forloops
  title: 'Nested For Loops'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


The Accumulator Pattern
==============

When writing `for` loops there are certain patterns that you will see over and over and over again. The accumulator pattern is the most common.

Say, for example, that we want to count the number of times that a `for` loop runs.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What happens?
# Answer:

secret_number = 97 # pretend that you don't know the value of this number

for num in range(secret_number):
    count = count + 1  # every time the loop runs, we will increment a variable
    
print(count) # then print it out at the end

```
</div>

</div>



Here, we get a name error. This is equivalent to saying something like `x = x + 1` when we haven't yet declared x as a variable.

The accumulator pattern looks like:

```python

count = 0  # 1) declare your accumulator variable
for num in range(secret_number):
    count = count + 1  # 2) update your accumulator variable
print(count)  # 3) when the loop is done, your accumulated value will be stored
```

__Think of the accumulator pattern as what allows your program to remember values across iterations of a for loop.__



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
secret_number = 12

count = 0  # 1) declare your accumulator variable
for num in range(secret_number):
    count = count + 1  # 2) update your accumulator variable
print(count)  # 3) when the loop is done, your accumulated value will be stored

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Modify the following code to accumulate the sum of all values
# that the loop loops over (in this instance, sum the numbers 1 through 12)
secret_number = 12

count = 0  # 1) declare your accumulator variable
for num in range(secret_number):
    count = count + 1  # 2) update your accumulator variable
print(count)  #

```
</div>

</div>



This is the pattern that you will use to create new strings with for loops, calculate factorials (n!), calculate numbers in the fibonacci sequence, and generally update values as iterations happen. 



Some non-working examples
------------

Let's examine why the following example doesn't work (even though they don't cause errors).



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 1
for num in range(54):
    count = 1  # this resets count to 1 each time the loop iterates
    count = count + 1
print(count)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 2
count = 0
for num in range(54):
    count = 1  # this resets count to 1 each time the loop iterates (doesn't add)
print(count)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 3
count = 0
for num in range(54):
    count = num # this sets count equal to the value of num on each iteration
print(count)

```
</div>

</div>

