---
redirect_from:
  - "/06/4/debugging-while-loops"
interact_link: content/06/4/debugging_while_loops.ipynb
kernel_name: python3
has_widgets: false
title: 'Debugging While Loops'
prev_page:
  url: /06/3/while_accumulator
  title: 'While Loops and the Accumulator Pattern'
next_page:
  url: /07/lists
  title: 'Lists'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Debugging `while` Loops
==================

Loops are so important and debugging them can be so tricky that we are going to cover a few common mistakes and debugging strategies specific to loops.

As always, our [general strategies for debugging python code](../../02/4/debugging_python_code.html) still apply here.



Scenario 1: did not initialize our tracker variable
------------------------------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!

while x < 5:
    print(x)
    x += 1

```
</div>

</div>



Running the above code will give you an error message similar to:

```
---------------------------------------------------------------------------
NameError                                 Traceback (most recent call last)
<ipython-input-1-e02499b1260a> in <module>()
      1 # TODO: run this code!
      2 
----> 3 while x < 5:
      4     print(x)
      5     x += 1

NameError: name 'x' is not defined

```

This message tells us that at line 3, `x` is not defined.

__The fix__: add a line, such as `x = 0` before the start of the loop. 

```python
x = 0
while x < 5:
    print(x)
    x += 1
```



Scenario 2: while loop is not executing
------------------------------



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
x = 0
while x > 5:
    print(x)
    x += 1

```
</div>

</div>



Running this code will not give you an error, but it will also give you __no output__. The fact that there is no output indicates that your loop did not run, not even once. Notice that this code does finish executing, the loop just didn't run. This is a bit clearer if we add a `print` statement after the loop (a great step to take when debugging!).



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
x = 0
while x > 5:
    print(x)
    x += 1
    
# start debugging this code by printing the value of x after the loop
print(x) 

```
</div>

</div>



__The fix__: this is most often due to either the initial value of the tracker variable or the logical expression being incorrect. What is happening here is that the very first time `x > 5` gets tested, it evaluates to `False` so the loop does not run at all.

In this case, we would want to change the logical expression to `x < 5`. 

A question for you: what would happen if instead of changing the logical expression, we changed the initial value of `x` to a number 5 or greater as in the code snippet below?

```python
x = 5  # start at 5 instead of 0
while x > 5:
    print(x)
    x += 1
    
# start debugging this code by printing the value of x after the loop
print(x) 
```



Scenario 3: infinite loop
------------------------------

This is the most common and, arguably, the most frustrating kind of error that occurs with `while` loops. Take a look at the following code:

```python
x = 0
while x < 5:
    print(x)
    x -= 1
```

You can tell that you have an infinite loop if the kernel "hangs" (in jupyter notebooks, this is indicated by the `*` icon in the brackets to the left of the cell, as in `In [*]:`) or if it produces infinite output. These types of loops require you to manually stop the kernel.

__The fix__: these errors are because either the __update__ step of your while loop is not happening as you wish (you may have forgotten it entirely) or the logical expression testing __are we done?__ isn't testing what you think that it's testing.

Start debugging these scenarios by finding the code that updates the variable that you are testing in your logical expression:

```python
x = 0
while x < 5:
    print(x)
    x -= 1  # This is the update since it changes the value of x
```

Now, our next questions are:
1. is this update happening when we think that it should happen?
2. will the logical expression ever evaluate to False?

In this code, our update is happening on every iteration but `x < 5` will never be False because the value of `x` only gets smaller. As in the scenario above, how you fix this depends on what you want your code to do:

```python
x = 0
while x > -5:  # fix by changing the logical expression
    print(x)
    x -= 1
```

or:

```python
x = 0
while x < 5:  
    print(x)
    x += 1   # fix by changing the update
```

