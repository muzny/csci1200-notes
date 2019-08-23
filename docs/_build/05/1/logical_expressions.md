---
redirect_from:
  - "/05/1/logical-expressions"
interact_link: content/05/1/logical_expressions.ipynb
kernel_name: python3
has_widgets: false
title: 'Logical Expressions'
prev_page:
  url: /05/conditionals
  title: 'Conditionals'
next_page:
  url: /05/2/if_statements
  title: 'if Statements'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Logical Expressions
===============

When we learned about data types, we promised that we would talk about boolean values in greater depth in the future. That future is now.

So far, we know that the boolean data type has two values, `True` and `False`. We also know that underneath it all, our computers are executing machine code to manipulate binary data ("bits") that are 1s and 0s. The boolean data type maps directly to these 1s (`True`/"on") and 0s (`False`/"off").

Take a look at what happens when we cast boolean values to ints.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code
int(True)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code
int(False)

```
</div>

</div>



__Logical expressions__ are what we call all expressions that evaluate to either `True` or `False`. These expressions may involve one or both of __comparison operators__ and __logical operators__.



Comparison Operators
------------

Comparison operators compare two values (any type) and give back the result of `True` or `False`. Some of these comparison operators you may have seen previously in math classes, but some you probably haven't.

```python
value1 < value2  # less than
value1 <= value2  # less than or equal to 
# (NOTE! "=<" does NOT work!)

value1 > value2  # greater than
value1 >= value2  # greater than or equal to 
# (NOTE! "=<" does NOT work!)

value1 == value2  # equal
value1 != value2  # not equal


```

Before you play around with these, let's pay special attention to the fact that to *test equality, we __must__ use `==`, NOT `=`*. This is because just `=` is what's called the __assignment operator__. It is how we assign a value to a variable, which is very different than testing for equality!




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Play around with the comparison operators
# Can you use < between floats? strings? 
# what does < between strings test for?
# Answer:

1 < 3 

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: investigate what happens when you 
# compare strings. What makes a string "less than"
# or "greater than" another string?
# Is capitalization important?
# Answer:

"cat" > "alpaca"

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# Fix the SyntaxError
1.0 = 1

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# What do you think this expression will evaluate to?
# Does it?
0.0000000000000000000001 == 0

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# What do you think this expression will evaluate to?
# Does it?
"Flamingo" != "flamingo"

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code.
# What do you think this expression will evaluate to?
# Does it?
"yes" == "YeS"

```
</div>

</div>



Comparison operators have *__lower__* precedence than all of our mathematical operators. For example, in the expression:

```python
3 + 4 < 5
```

The `3 + 4` will be evaluated before the less than comparison operator.

Comparison operators include `==`,`!=`,`<=`,`>=`,`>`,`<`, and `in`.

`in` can be used with strings and lists to test for membership ("is there an `"a" in "cat"`?"). We'll look at `in` in more depth when we look at lists.



Logical Operators
-------------

The second piece of the logic puzzle is the __logical operator__. A logical operator is similar to a comparison operator except that it __only__ operates on boolean values. It's job is to take either one or two boolean values and give you back one new boolean value.

Our logical operators are:

```python
# and (two boolean values -> one boolean value)
boolean_value1 and boolean_value2  

# or (two boolean values -> one boolean value)
boolean_value1 or boolean_value2

# not (one boolean value -> one boolean value)
not boolean_value1  # not
```

We'll concentrate on `and` and `or` for the time being (though we encourage you to play around with `not`!).

`and`
-------
Think of `and` as translating to: `True` if __both__ the first value and the second value are `True`.

For instance, if you wanted a value of `True` if someone was both at least `18` and a Colorado resident, you might have code like:

```python
age = 19
residency = "Colorado"
print(age >= 18 and residency == "Colorado")
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: play with the "and" logical operator.
# What happens if one of the values is false?
# What happens if both of the values are false?
# Answer:


```
</div>

</div>



`or`
-------
Think of `or` as translating to: `True` if __either__ the first value or the second value is `True`.

For instance, if you wanted a value of `True` if someone was either an INFO major or a CSCI major:

```python
name = "Mohamed"
major = "INFO"
print(major == "INFO" or major == "CSCI")
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
name = "Mohamed"
major = "INFO"
print(major == "INFO" or major == "CSCI")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code!
name = "Susan"
major = "ATOC"
print(major == "INFO" or major == "CSCI")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this code! What happens?
# Answer:
major = "ENGL"
major == "INFO" or "CSCI"

```
</div>

</div>



In the cell above we have code that doesn't quite do what we wanted it to. We've put it here because this is a common bug when writing logical expressions. Even if you are testing the value of the same variable twice, you __must__ write the name of the variable again (because python isn't as smart as you or I, we have to be very very explicit about everything!).



See [the section on `not`](../6/not.html) for more information on this logical expression.

