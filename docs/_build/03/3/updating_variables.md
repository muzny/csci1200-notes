---
redirect_from:
  - "/03/3/updating-variables"
interact_link: content/03/3/updating_variables.ipynb
kernel_name: python3
has_widgets: false
title: 'Updating Variables' Values'
prev_page:
  url: /03/2/variables
  title: 'Variables'
next_page:
  url: /03/4/casting
  title: 'Casting'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Updating Variables' Values

Since variables are how our programs remember information, it is extremely important that we are able to update their values.

For example, we might have a variable `dogs` that represents how many dogs the user owns, we might set it to have an initial value of `0`. We then learn that the user has adopted a Great Dane, so we'll want to update that value to `1`.

We can expand the syntax that we learned in the previous section to understand that we can also use it to update the value of a variable.

```python
name = initial value or new value
```

The code from our example above might translate to:

```python
dogs = 0
print(dogs)
# user adopts a Great Dane
dogs = 1
print(dogs)
```

Whenever we use the `=` between a variable name on the left and a value on the right, the value stored in the variable gets updated to whatever the new value is.

## Updating a variable's value based on its previous value

One of the most powerful things about variables is that we can update them based on the value that they previously had.

Taking our example with dogs from above, when the user adopts the Great Dane, we actually don't care how many dogs they previously owned. We only care that they now have one more than they previously had.

To write this in code, we'll say "the new value of `dogs` should be equal to the old value of `dogs` plus 1".

```python
dogs = dogs + 1
```

When this code is executed, the right side is interpreted first (`dogs + 1`). What python does is it reads the variable name `dogs`, looks up the current value of that variable, then adds 1 to that value. After completing that task, python then updates the value of the `dogs` variable to whatever the new value is.

Let's take a look at a complete example.


```python
dogs = 3
print(dogs)  # prints out 3
dogs = dogs + 1
print(dogs)  # prints out 4
```

We can generalize this to a formula for updating variables as:

```python
variable = variable operator value
# such as
variable = variable + value
variable = variable - value
variable = variable * value
# etc
```

One more quick note: it's standard practice to write the right side like `variable operator value`, but you can definitely also write `value operator variable`, like:

```python
variable = value + variable
# minus in particular will give you a different calculation!
variable = value - variable  
# etc
```

What do you think will be printed out when you run the code snippets below?



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
rabbits = 2
rabbits = rabbits * 4
print(rabbits)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
cats = 4
mice = 20
mice = mice - (cats * 2)  # each cat eats 2 mice!
print(mice)

```
</div>

</div>



## Using += syntax to update a variable's value

Updating the value of a variable is extremely common when we're writing programs. It's so common, in fact, that python has a shortcut for writing lines of code like `dogs = dogs + 1`. Instead of writing a `=` sign, we'll use `+=`. This is shorthand for saying "add the previous value of the variable (`dogs`) to the given value (`1`), then update that variable(`dogs`)'s value".

Let's take a look at some examples:
```python
dogs = 5
dogs = dogs + 1
print(dogs) # prints 6

# equivalent code using +=
dogs = 5
dogs += 1
print(dogs) # prints 6
```

__Important__: `+=` is not the same as the `=` sign! To use `+=`, your variable must already exist (what would happen if it didn't already exist?). Take a look at some of the examples below.




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code! What happens?
# if there is an error, figure out a way to fix that error
x = 1
print(x)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code! What happens?
# if there is an error, figure out a way to fix that error
y += 2
print(y)

```
</div>

</div>



In python, we can generalize the `+=` syntax to "operator equals". This means that we can also use the following syntax:
- `-=`: `x -= 2` translates to `x = x - 2`
- `*=`: `y *= 4` translates to `y = y * 4`
- `/=`: `z /= 1.5` translates to `z = z / 1.5`

(You'll see `+=` far, far, *far* more frequently than the other ones.)

Remember, your goal is to write understandable code, so if using the standard `variable = variable + value` syntax is easier for you to read, use that syntax! There are no bonus points for typing less. 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Which of the following is -= equivalent to?
# variable = variable - value
# variable = value - variable

# Do some of your own experiments to discover!

```
</div>

</div>

