---
redirect_from:
  - "/12/1/using-objects-part1"
interact_link: content/12/1/using_objects_part1.ipynb
kernel_name: python3
has_widgets: false
title: 'Using Objects (part 1)'
prev_page:
  url: /12/objects
  title: 'Objects'
next_page:
  url: 
  title: ''
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Using Objects (part 1)
=============

Back when we talked about [data types](../02_datatypes_variables/02_data_types_operations.ipynb), we talked about them as if they were pretty similar in how they acted.

When we [learned about built-in functions](../04_functions/03_builtin_functions.ipynb), we learned that strings interact differently with functions than ints, floats, and booleans do.

When we [learned about lists](../07_lists/06_lists_builtin_functions.ipynb), we learned that they interact similary with functions to strings.

What has been going on here is that strings and lists are both what we call __objects__.

Types like `int`, `float`, and `boolean` are what we call "primitive" (basically not an object).

An object has __state__ and __behavior__.

For example, a string's state would be the letters that it stores and its behavior is the functions that you  can call on it.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
s = "hello"  # state: "hello"
print(s.upper())  # behavior: can give you the upper case version
print(s.islower())  # behavior: can tell you if it is lower case

```
</div>

</div>



__state__: corresponds to the underlying data  
__behavior__: corresponds to functions that you can call on an object


Identifying Objects
-------------

An object in python is anything that we will interact with by calling functions following the syntax:

```python
return_value = value.function(parameters)  # value is an object

# as opposed to
return_value = function(value)  # value is not an object
```

Here are some examples with strings and lists. You should have a sense for how to go about *using* objects. We'll dive into what exactly an object represents in the future. 



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
k = ["dog", "cat", "parrot"]
num = k.count("dog")  # lists are objects
s = "  ".join(k)  # strings are objects

```
</div>

</div>

