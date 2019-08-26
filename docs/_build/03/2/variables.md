---
interact_link: content/03/2/variables.ipynb
kernel_name: python3
has_widgets: false
title: 'Variables'
prev_page:
  url: /03/1/data_types_operations
  title: 'Data Types and Operations'
next_page:
  url: /03/3/updating_variables
  title: 'Updating Variables' Values'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


# Variables and Variable Declarations

Variables are how our programs are going to remember information. Our variables have two parts: __names__ and __values__. When we create a variable we set its name and assign it an initial value.

```python
name = value
```

The name *__always__* goes on the left of the equals sign and the value *__always__* goes on the right of the equals sign. If you switch these you will get an error!

For example, if I want a variable called `age` to have the value `91`, I would write:

```python
age = 91
```

We can use any name for our variables as long as they begin with a letter. Ideally, we want names that are descriptive of the values that the variables hold. 

```python
my_var = 1
a = 2

# notice that we separate words with
# underscores to improve readability!
flying_purple_people_eater = 3 

secrets = 42
```

Once we've declared a variable, we can then use its value later in our program. For instance, if I want to print out the value of a variable, I need to pass the variable as the argument of the print function:

```python
print(variable)
```

So for our example with the variable `age`, a completed example would have the code:

```python
age = 91 # declare the variable first
print(age) # now I can print it out
```



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
age = 91 # declare the variable first
print(age) # now I can print it out

# TODO: run this code. Does the print function print the name of the 
# variable or its value?
# Answer: 

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
a = 7
# TODO: write a line of code that prints 
# the value of the variable a


```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: write a line of code that declares
# a new variable and sets its value equal to 999

```
</div>

</div>



We can also do math with variables!  

Remember, we *__always__* have the variable name on the left and its value on the right. 

For instance:

```python
my_big_number = 100000 + 547362
my_small_number = -799 - 47
```

If we want to use a variable in a calculation, that's also okay:

```python
first_num = 54
second_num = first_num + 72
print(second_num)
```

Remember: variables must always be declared before you use them! 

We'll explore what kinds of math operations we can use with variables when we talk about data types.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
x = 10
y = -1
# TODO: write the code that creates a new variable and sets its 
# value equal to the sum of x and y. Then, print out the value of 
# that variable. Can you print out the sum of x and y without saving 
# the value in a variable first?

```
</div>

</div>

