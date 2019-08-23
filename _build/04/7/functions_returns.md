---
redirect_from:
  - "/04/7/functions-returns"
interact_link: content/04/7/functions_returns.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing Functions with Returns'
prev_page:
  url: /04/6/main
  title: 'Writing a main Function'
next_page:
  url: /05/conditionals
  title: 'Conditionals'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Writing Functions with Returns
================

Let's write and call our own functions *__now, with returns!__* 

The basic format is:
```python
def function_name(parameters):
    # code here
    # notice that it is indented
    # everything indented here is inside this function
    return value
```

Remember, when we talked about [the input function](../1/input.html), we introduced return values. When we learned how to [use functions](../2/using_functions.html#functions-with-return-values), we also learned about calling functions with return values.

Now, we're going to write functions with return values.

Similarly to how we can think of parameters as __input__ to a function, we can think of a return value as __output__ from a function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code

def get_num():
    return 7

# remember, when we use return values, they must be saved 
# in a variable if we want to use them later!
num = get_num()
print(num)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: edit this function so that it returns the value rather than 
# printing it
def power(base, raised_to):
    ans = base ** raised_to
    print(ans)
    
# Notice that if you run this cell before changing the function to 
# return the answer, it will print out "None" instead because the power
# function does not have a return value
answer = power(2, 4)
print(answer)

```
</div>

</div>



Scope and return values
---------

So, you might be wondering, how does scope interact with returns? That's a great question.

Similarly to parameters, you can think of returns as returning a __value__ and not a __variable__.

In the `get_num` and `power` examples above we saw that we can return a raw value (`7`) or we can return the value of a variable (`ans`). Internally to python these are going to be the same. `ans` is just calculated in the moment.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Does our return value have to be saved in a variable
# with the same name as it had inside the function?
# Answer: 
def silly_fun():
    x = 2
    return x * x

y = silly_fun()
print(y)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Can we access the variable x from outside 
# the function?
# Answer: 

def silly_fun2():
    x = 2
    return x * x

y = silly_fun2()
print(y)
print(x)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Can we see the changes from the function outside of
# it, even if our int variable has the same name
# as inside the function?
# Answer: 
def silly_fun3(x):
    x = x * x
    return x

x = 7
result = silly_fun(x)
print(x)
print(result)

```
</div>

</div>

