---
redirect_from:
  - "/07/3/strings-lists-mutating"
interact_link: content/07/3/strings_lists_mutating.ipynb
kernel_name: python3
has_widgets: false
title: 'Strings, Lists, and Mutating'
prev_page:
  url: /07/2/strings_as_lists
  title: 'Strings as Lists'
next_page:
  url: /07/4/slicing
  title: 'Slicing'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Mutation in strings and lists
=========================

Say we have a string and want to change it to upper case. We've learned that we can use the `str.upper()` function to acheive this:

```python
s = "Xena, Warrior Princess"
uppercase = s.upper()
print(s)  # still the mixed-case version
print(uppercase)  # upper case version
```

But what do we do if we __only__ want to change the first 4 letters to uppercase? For "XENA, Warrior Princess"?

We might be tempted to write code like in the following cell:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What happens?
# Answer:

s = "Xena, Warrior Princess"
s[0] = s[0].upper()
s[1] = s[1].upper()
s[2] = s[2].upper()
s[3] = s[3].upper()

```
</div>

</div>



The `TypeError` that we get from this is because strings are __immutable__.

__immutable__: unchangeable

What's happenning in the background when we have the following code is that we're actually *creating new strings*.

```python
s = "cat"
s = s + "dog"  # creating a new string and assigning it to s
```

This is why we need to use the accumulator pattern when we're creating new strings — we're rebuilding new strings from old ones.



Lists & mutability
---------

Lists are __mutable__.

__mutable__: changeable

This means that we *can* update the contents of a list.

For example, let's take a look at the following code.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me! What happens?
# Answer:

word_list = ["Xena", "Warrior", "Princess"]
word_list[0] = word_list[0].upper()

print(word_list)

```
</div>

</div>



Notice that this is a way that strings and lists are different from each other!

List mutating functions (adding and deleting elements)
---------------

Take a look at the following functions: `list.append(element)` and `del list[index]`. These are how we add and delete values to/from lists. They are __mutator__ functions -- they change the value of the list instead of returning a new version of the list to us.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me

my_list = [1, 2]
print("Before: " + str(my_list))
my_list.append(7)
my_list.append(14)
print("After: " + str(my_list))

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me

my_list = [1, 2]
print("Before: " + str(my_list))
del my_list[0]
print("After 1: " + str(my_list))
del my_list[0]
print("After 2: " + str(my_list))

```
</div>

</div>



Mutator functions vs. pure functions
----------------------------

We say that a mutator function is any function that *changes the contents* of the list passed to it.

We say that a pure function is any function that *returns a new list* rather than changing the contents of the list passed to it.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: compare and contrast the behavior of the following two functions
# Call these functions and see how they are different from one another!
def list_add_one_mutate(my_list):
    for i in range(len(my_list)):
        my_list[i] += 1
        
def list_add_one_pure(my_list):
    added = []
    for i in range(len(my_list)):
        added.append(my_list[i] + 1)
    return added

```
</div>

</div>



You might have guessed that this mutation behavior of lists can make the question of scope quite complicated--that's a correct intuition.

Lists as parameters and Scope
---------------

There will be a whole section of course notes exploring how complicated this is but for the time being here's a summary: when lists are passed as parameters, their value is not passed (like `str`, `int`, `float`, and `bool`), *__rather, the actual list that you are working with is passed to the function__*. No copies are made.

It's like lending your friend your notebook (lists) instead of making a copy of one of the pages (as with `str`, `int`, `float`, and `bool`).

