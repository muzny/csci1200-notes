---
redirect_from:
  - "/06/3/while-accumulator"
interact_link: content/06/3/while_accumulator.ipynb
kernel_name: python3
has_widgets: false
title: 'While Loops and the Accumulator Pattern'
prev_page:
  url: /06/2/common_while_uses
  title: 'Common While Loops Patterns'
next_page:
  url: /06/4/debugging_while_loops
  title: 'Debugging While Loops'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


The Accumulator Pattern
==============

When writing `while` loops, in addition to the patterns covered in section 6.2, there will be one more pattern that we will see over and over and over again.

This is the "accumulator" pattern. This is the pattern that we will use whenever we want to build up a value across iterations of a loop. This is different than the "tracker" variable because the accumulated value (typically) doesn't control how many times the loop iterates. Rather, it *gathers information* as the loop iterates.

Say, for example, that we want to know the sum of the numbers from 0 to 99.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What happens?
# Answer:

num = 0 # 1) initialize "tracker"
sum_nums = 0 
while num < 100: # 2) done?
    sum_nums = sum_nums + num
    num = num + 1 # 3) update tracker
    
print(sum_nums) # then print it out at the end

```
</div>

</div>



The accumulator pattern looks like:

```python
my_tracker = 0 # 1) initialize tracker
count = 0  # A) declare your accumulator variable
while logical expression involving tracker variable:  # 2) done?
    count = count + 1  # B) update your accumulator variable
    my_tracker = my_tracker + 1 # 3) update your tracker
    
print(count)  # 3) when the loop is done, your accumulated value will be stored
```

__Think of the accumulator pattern as what allows your program to remember values across iterations of a loop.__

The accumulator pattern has 2 parts (A and B above) that are separate from the three steps (1, 2, 3 above) that we use to make a while loop execute.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
# in this example, num controls/"tracks" the while loop
# and count is counting the number of iterations

num = 0
count = 0  
while num < 54:
    count = count + 1
    num = num + 1
print(count)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
secret_number = 12556
num = 0
count = 0  # A) declare your accumulator variable
while num < secret_number:
    if num % 3 == 0:
        count = count + 1  # B) update your accumulator variable
    num = num + 1
print(count)  # 3) when the loop is done, your accumulated value will be stored

# What does this loop count?

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
num = 0
while num < 54:
    count = 1  # this resets count to 1 each time the loop iterates
    count = count + 1
    num = num + 1
print(count)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 2
count = 0
num = 0
while num < 54:
    count = 1  # this resets count to 1 each time the loop iterates (doesn't add)
    num = num + 1
print(count)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 3
count = 0
num = 0
while num < 54:
    count = num # this sets count equal to the value of num on each iteration
    num = num + 1
print(count)

```
</div>

</div>

