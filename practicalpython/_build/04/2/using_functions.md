---
redirect_from:
  - "/04/2/using-functions"
interact_link: content/04/2/using_functions.ipynb
kernel_name: python3
has_widgets: false
title: 'Using Functions'
prev_page:
  url: /04/1/input
  title: 'Input and Using Functions'
next_page:
  url: /04/3/builtin_functions
  title: 'Built-in Functions'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Using functions
==========

In previous installments of the course notes, we've seen the `print` and `input` functions.

Functions make up the main building blocks of our programs—they are re-usable pieces of code that are nicely wrapped up for us. For instance, the implementation of the `print` function may have 50 lines of code, it may only have 2. We don't know and we don't care. To use it, we just have to write `print("my fantastic message")`.

We can give the general format for using functions as:

```python
return_value = function_name(parameters)
```

Not all functions have all parts of this general format, but __all functions do have: `function_name()`__ (a name and parentheses).

If we forgot the parentheses, python would interpret `function_name` as a variable, which we don't want.



Parameters/Arguments
------------

You'll notice that we use the words "parameters" and "arguments" pretty much interchangeably to refer to the same thing. This is ok!

__Parameters__: the values that a function takes and uses to perform its task. (further refined in [the 5th installment of this chapter](05_writing_functions_parameters.ipynb))

For instance, `print("my message")` will print out `my message`.

Some functions have a fixed number of parameters that they take. For example, the `len()` function only takes 1 parameter.

Some functions can take a variable number of parameters. For example, we can write `print()`, `print("hello")`, and `print("hello", "there")`. These function calls all do slightly different things.

Notice that when we provide multiple parameters to a function, we use a comma (`,`) to separate them.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell, what does the len() function do?
# Answer: 
print(len("hello"))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell, what happens if you run the len function 
# with more than one parameter?
# Answer: 
print(len("hello", "there"))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell, what happens if you run the len function 
# with no parameters?
# Answer: 
print(len())

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: compare and contrast calls to print() with variable numbers of
# parameters
print()
print("hello")
print("hello", "there")

```
</div>

</div>



Functions without return values
----------------

Our best example of a function without a return value is `print()`. 

We call functions without return values like:

```python
function_name(parameters)
```


Out of curiousity, let's investigate this lack-of-return-value more.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. If we try to save a return value for a function that doesn't
# have one, what happens?
# Answer:

print("first message")
print_return = print("second message")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# now let's investigate the value of the print_return variable
# TODO: print out the value of print_return
print(print_return)

```
</div>

</div>



This shows us that if a function doesn't have a return value and we try to save it anyways, we get a special python value called `None`.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
print(type(None))

```
</div>

</div>



`None` is a value that doesn't have any of our 4 basic types (`int`, `float`, `string`, `boolean`). In fact, it has its own type only for itself! `None` is a special value that literally represents nothing. We'll get into this more later in the course.



Functions with return values
----------------

A great example of a function _with_ a return value is `input()`. `len()` also has a return value. In fact, _most_ functions that we will use in this course, and especially [python's built-in functions](03_builtin_functions.ipynb) have return values.

*__Remember: if you do not save a return value in a variable, you cannot use it later!__*



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell, why do you get an error?
# Answer:
input("Do you own a labradoodle?")
print(answer)

```
</div>

</div>



When we call functions with return values, we use the format:

```python
return_value = function_name(parameters)
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: use the len() function to find the length of your favorite 
# strings, then add these lengths together and report them to the user.

```
</div>

</div>



String functions
-----------

Of course, it would be too simple if all functions worked exactly the same way. We'll take more about exactly why this is, but string functions are formatted slightly differently. The general format for string functions is:

```python
return_value = string_var.function_name(parameters)
```

Let's look at an example: the `islower()` function.

```python
my_string = "I am a string!"
result = my_string.islower()
print(result)
```

What this string is doing is saying "Hey, `my_string` variable! I want you to tell me if you are lower case!"

Another example: the `lower()` function.

```python
my_string = "I am a string!"
result = my_string.lower()
print(result)
```

What this string is doing is saying "Hey, `my_string` variable! I want you to give me back the lower case version of yourself!"



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me
my_string = "I am a string!"
result = my_string.islower()
print(result)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me, then modify this code to test whether the variable
# result is lower case or not. Print out your final assessment.
my_string = "I am a string!"
result = my_string.lower()
print(result)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: now let's look at a tricky strings trap.
# print out the length of the following string, then print out the lower
# case version of it.
s = "I AM A STRING SUCH A STRINGY STRING STRING"

```
</div>

</div>

