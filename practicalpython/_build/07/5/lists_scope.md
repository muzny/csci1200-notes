---
redirect_from:
  - "/07/5/lists-scope"
interact_link: content/07/5/lists_scope.ipynb
kernel_name: python3
has_widgets: false
title: 'Lists and Scope'
prev_page:
  url: /07/4/slicing
  title: 'Slicing'
next_page:
  url: /07/6/lists_builtin_functions
  title: 'Lists and Built-in Functions'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Mutable types (e.g. lists) and Scope
============================

At the end of [section 7.3](03_strings_lists_mutating.ipynb), we mentioned that scope becomes even more complicated with lists. This is because lists, unlike the other types we've worked with, are __mutable__.


| type    | mutable? | example values                                                                                |
|---------|------------|-----------------------------------------------------------------------------------------------|
| int | no!        | -10, -7, -4, 0, 2, 13, 1117, 98372                                                            |
| float   | no!      | -5.3, -4.0, -0.756, 0.0, 1.25, 12386.2                                                        |
| string  | no!        | "hello", "csci1200", "sentences are strings", "3.0", "remember to start your homework early!" |
| boolean | no!       | True, False                                                                     |
| list | __yes!__       | [1, 2], ["cat", "dog", "bird"], [False, True, False], [1, 0.2, "friend", False] |

We say that types that are not mutable are __pass-by-value__. This means that when we pass them as parameters into functions, their value is copied and that value is given to the function. If the function modifies that value, we *do not* see that change from the original variable.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. This is an example of pass-by-value.
# This is what we have learned so far. What we know and love!

def add_one(x):
    x = x + 1
    print("x inside add_one: " + str(x))
    
def main():
    a = 7
    print("a before add_one inside main: " + str(a))
    add_one(a)
    print("a after add_one inside main: " + str(a))  # note that you DO NOT see the changed value here!
    print()
    
    x = 13
    print("x before add_one inside main: " + str(x))
    add_one(x)
    print("x after add_one inside main: " + str(x))  # note that you DO NOT see the changed value here!
    print()
    
if __name__ == "__main__":
    main()

```
</div>

</div>



In contrast, when types are mutable, they are __pass-by-reference__. This means that when we pass them as parameters into functions, we are not just passing their values, but we are lending the function the actual same list that we declared elsewhere. If we modify the list inside the function, we will see those changes outside of the function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run me. This is an example of pass-by-reference.

def add_one_list(my_list):
    my_list[0] += 1
    print("my_list inside add_one_list: " + str(my_list))
    
def main():
    a = [7]
    print("a before add_one_list inside main: " + str(a))
    add_one_list(a)
    print("a after add_one_list inside main: " + str(a)) # note that you see the changed value here!
    print()
    
    my_list = [3, -7, 6]
    print("my_list before add_one_list inside main: " + str(my_list))
    add_one_list(my_list)
    print("my_list after add_one_list inside main: " + str(my_list))  # note that you see the changed value here!
    print()
    
if __name__ == "__main__":
    main()

```
</div>

</div>



This is why we care so much about mutator versus pure functions. We need to know where in our code we'll have access to the changed list values!

In general, __it is considered better style__ to write pure functions when possible. Below is an example of our `add_one_list` function as a pure function.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
def add_one_list(my_list):
    # first copy the list
    copied = []
    for element in my_list:
        copied.append(element)
    copied[0] += 1
    print("my_list inside add_one_list: " + str(my_list))
    print("copied inside add_one_list: " + str(copied))
    return copied  # we need to return our new list if we want to be able to access it!

def main():
    a = [7]
    print("a before add_one_list inside main: " + str(a))
    b = add_one_list(a)
    print("a after add_one_list inside main: " + str(a)) # note that you DO NOT see the changed value here!
    print("b after add_one_list inside main: " + str(b)) # note that you see the changed value here!
    print()
    
    my_list = [3, -7, 6]
    print("my_list before add_one_list inside main: " + str(my_list))
    my_list = add_one_list(my_list)  # overwrite our previous value in my_list with the return value from the function
    print("my_list after add_one_list inside main: " + str(my_list))  # note that you see the changed value here!
    print()
    
if __name__ == "__main__":
    main()

```
</div>

</div>

