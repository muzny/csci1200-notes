---
interact_link: content/03/4/casting.ipynb
kernel_name: python3
has_widgets: false
title: 'Casting'
prev_page:
  url: /03/3/updating_variables
  title: 'Updating Variables' Values'
next_page:
  url: /03/5/strings
  title: 'Strings'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Type Conversions (Casting)
================



Earlier in this chapter of the notes, we learned about different types and doing operations on them, such as adding `int`s together (`17 + 32`).

Some of these operations result in a value of the same type (`17 + 32` is `49`, which is also an `int`), while some operations change the type. For instance, `17 + 32.0` changes the result into `49.0`, which is a `float`.

There are two general ways to convert values from one type to another:
1. With math.
2. With _casting_ functions.

Before we get into the details of these, let's take a look at the `type()` function. This is a function like the `print()` function. It takes one argument of any value and tells you what type that value is:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code
type(7)  # the output should be "int"

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: try out the type function on some different values
type("hi")

```
</div>

</div>



We can also pass a variable to the `type()` function. When we pass a variable to the `type()` function, we are asking "what is the type of the value stored in this variable?".



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code, then play around with it more.
# we can also pass variables to the type 
# function as its argument
x = 12.4
type(x)

```
</div>

</div>



Now that we know another way (with jupyter notebooks we have the `whos` notebook tool) to find the type of variables, let's learn about actually changing data types.

The Math Way
-------------

When we are talking about numbers, we can convert from `int` to `float` just by doing math.

Whenever we multiply, divide, add, or subtract a `float` with an `int`, the result will always be a `float`.

For example:
```python
x = 3 + 4 
print(type(x))  # int
y = 3.0 + 4
print(type(y))  # float
```

This means that if you have an `int` but you want the same number as a float, if you multiply it by `1.0`, you will have your desired result.




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: convert the variable z to a float using math.
z = 12

```
</div>

</div>



When we use math to convert types in python, we can change from `int` to `float` but we can't do the reverse! Even if we use integer divide `//`, this won't give us an `int` if __any__ of the numbers started as `float`s!



The Casting Way
=========

The most general way to convert values to a different type is by using _casting functions_. These are functions that take one value and give you back that same value, but as a different type. There are 4 basic casting functions that match our 4 basic types: `int(), float(), str(), bool()`.

The `int()` function takes any value and returns it as an `int`. For example, `int(7.0)` gives you the value `7`.

What do you think happens if you do `int(7.2)`? What about `int(7.9)`?



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code. play with the int() function

print(int(7.2))
print(int(7.9))

```
</div>

</div>



Notice that we put the `int(7.2)` function inside a `print()` function. This is so that we can print out the results and can see them.

With casting functions, if you want to be able to use the results, you *__must always save them in a variable__*.

```python
x = 7.9
x = int(x) # now I can access the results!
print(x)
```

People frequently make the mistake of forgetting to save their results:

```python
x = 7.9
int(x) # DANGER!!!! Not saved!
print(x)
```



The other three casting functions work the same as the `int()` function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: play with float()
val = 8
val = float(val)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: play with str()
val = 8
val = str(val)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: play with bool()
# We'll talk more about booleans later but they have behavior that you
# might not expect when casting, so they are fun to play with
val = 8
val = bool(val)

val2 = 0
val2 = bool(val)

```
</div>

</div>



Lastly, it's important to note that these casting functions _don't always work_! Sometimes, they can cause errors.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code
int("hello")  # What does this even mean anyways?

```
</div>

</div>

