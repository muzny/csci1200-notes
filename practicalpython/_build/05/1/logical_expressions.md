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

[Long ago](../02_datatypes_variables/02_data_types_operations.ipynb) we promised you that we would talk about boolean values in greater depth. The theme of this week is making good on that promise.

So far, we know that the boolean data type has two values, `True` and `False`. We also know that underneath it all, our computers are executing machine code to manipulate binary data ("bits") that are 1s and 0s. The boolean data type maps directly to these 1s (`True`/"on") and 0s (`False`/"off").

Take a look at what happens when we cast boolean values to ints.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
int(True)

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
int(False)

```
</div>

</div>



__Logical expressions__ are what we call all expressions that evaluate to either `True` or `False`. These expressions may involve one or both of __comparison operators__ and __logical operators__.



Comparison Operators
------------

Comparison operators compare two values and give back the result of `True` or `False`. Some of these comparison operators you may have seen previously in math classes, but some you probably haven't.

```python
value1 < value2  # less than
value1 <= value2  # less than or equal to 
#(NOTE! "=<" does NOT work!)

value1 > value2  # greater than
value1 >= value2  # greater than or equal to 
# (NOTE! "=< does NOT work!)

value1 == value2  # equal
value1 != value2  # not equal


```

Before you play around with these, let's pay special attention to the fact that to *test equality, we __must__ use `==`, NOT `=`*. This is because just `=` is our assignment operator, that's how we assign a value to a variable, which is very different than testing for equality!




<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. Play around with the comparison operators
# Can you use < between floats? strings? 
# what does < between strings test for?
# Answer:

1 < 3  # notice that < turned purple! 

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
"cat" > "alpaca"

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this cell. Fix the SyntaxError
1.0 = 1

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
0.0000000000000000000001 == 0

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
"Flamingo" != "flamingo"

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
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

`in` can be used with strings and lists to test for membership ("is there an `"a" in "cat"`).



Logical Operators
-------------

The second piece of the logic puzzle is the __logical operator__ a logical operator is similar to a comparison operator except that it __only__ operates on boolean values.

Our logical operators are:

```python
boolean_value1 and boolean_value2  # and
boolean_value1 or boolean_value2  # or
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
# TODO: play with the and logical operator.
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
# TODO: run me!
name = "Mohamed"
major = "INFO"
print(major == "INFO" or major == "CSCI")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me!
name = "Susan"
major = "ATOC"
print(major == "INFO" or major == "CSCI")

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What happens?
# Answer:
major == "INFO" or "CSCI"

```
</div>

</div>



In the cell above we have code that doesn't quite do what we wanted it to. We've put it here because this is a common bug when writing logical expressions. Even if you are testing the value of the same variable twice, you __must__ write the name of the variable again (because python isn't as smart as you or I, we have to be very very explicit about everything!).

