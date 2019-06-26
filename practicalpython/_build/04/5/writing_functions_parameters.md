---
redirect_from:
  - "/04/5/writing-functions-parameters"
interact_link: content/04/5/writing_functions_parameters.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing Functions with Parameters'
prev_page:
  url: /04/4/writing_functions
  title: 'Writing Functions'
next_page:
  url: /04/6/main
  title: 'Main'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Writing Functions with Parameters
==========

Let's write and call our own functions *__now, with parameters!__* 

The basic format is:
```python
def function_name(parameters):
    # code here
    # notice that it is indented
    # everything indented here is inside this function
```

We can give the function as many parameters as we want to in a comma separated list.

Before we go on, let's refine "parameter" a little more. (Adding to our definition from [section 4.2](02_using_functions.ipynb).)

__parameter__: information passed to the function when it is called. All parameters are given a name in the function definition. The name is how we will refer to the value that was passed to the function when it was called.

Notice that parameters are similar to, but not the same as, variables.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me

# this is a function definition that takes one parameter
# when the function is called, the parameter x takes the 
# value given to the function
def times_two(x):
    ans = 2 * x
    print(ans)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Parameters let our functions do the same thing, but to different values
# TODO: run me, add more examples of your own.

times_two(7)
times_two(100)
times_two(-1.2)
print()

# we can use variables as parameters when we are calling a function
a = 13
# this calls the function times_two, passing in the value of a (13)
times_two(a)
# this calls the function times_two, passing in the value of a + 5.4 (18.4)
# Notice that if we have a mathematical expression, this math will be
# resolved (evaluated) before the value is given to the function
times_two(a + 5.4)

```
</div>

</div>



Parameters and Ordering
------------

Let's look at an example of a function that takes two parameters so that we can talk about how ordering affects parameters.

```python
def subtract(x, y):
    s = x - y # notice that we subtract y from x and never x from y
    print(str(x) + " - " + str(y) + " = " + str(s))
```
    
When we call this function, the first value that we pass to it will be given to the parameter `x` and the second value that we pass to it will be given to the parameter `y`.

Let's play around with some examples.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me to get the definition of subtract read into your notebook
def subtract(x, y):
    s = x - y # notice that we subtract y from x and never x from y
    print(str(x) + " - " + str(y) + " = " + str(s))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. Are the results of these two function calls the same?
# Answer:

subtract(10, 7)
subtract(7, 10)
print()

# What about if we pass in values via variables instead of directly?
a = 4
b = 99
subtract(a, b)
subtract(b, a)

```
</div>

</div>



To reiterate: no matter what, the value that you pass in first will be assigned to the first parameter, second to the second parameter, and so on and so forth.



Scope
----------

Let's talk about scope, but first, an informal definition:

__scope__: where you have access to which variables and parameters. This also refers to where you can change the values of which variables and parameters.

An example without functions:
```python
x = 1
y = 2
print(x)
print(y)
# print(z)  # ERROR because z doesn't exist here
z = 3  # lines after this one are where z is in scope
print(z)
x = x + 1 # x is still in scope, we can still access it
```

Of course, the picture becomes more complicated when we start involving functions. Let's use our `subtract` function from above.

```python
def subtract(x, y):
    s = x - y # notice that we subtract y from x and never x from y
    print(str(x) + " - " + str(y) + " = " + str(s))
    
a = 10
b = 7
subtract(a, b)
```

What would happen if we tried to access the variables `x` and `y` outside of `subtract`?



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Run this cell. What happens?
# Answer:
def subtract(x, y):
    s = x - y
    print(str(x) + " - " + str(y) + " = " + str(s))
    
a = 10
b = 7
subtract(a, b)
print(x) # notice that we added these lines!
print(y)

```
</div>

</div>



This causes an error because `x` and `y` are __only__ in scope inside of the `subtract` function. 

__In general, inside functions, you should only be accessing parameters or variables that you defined inside the function.__

Now let's take a look at what happens if you *also* have variables named `x` and `y` outside of the subtract function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. What happens when you pass the variable x in as the 
# second parameter rather than the first?
# Answer:
def subtract(x, y):
    s = x - y
    print(str(x) + " - " + str(y) + " = " + str(s))
    
x = 10
y = 7
subtract(x, y)
subtract(y, x)  # What happens here?

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: try some other combinations out
subtract(x, x) # for example

```
</div>

</div>



What's happening here is that rather than passing in the variable `x`, we are passing the *value* of the variable `x`. The same thing goes for `y`.

