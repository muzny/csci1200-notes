---
interact_link: content/04/6/main.ipynb
kernel_name: python3
has_widgets: false
title: 'Main'
prev_page:
  url: /04/5/writing_functions_parameters
  title: 'Writing Functions with Parameters'
next_page:
  url: /04/7/functions_returns
  title: 'Functions and Returns'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


The `main` function
==============

All programs have a special function called main, which is what is run when you run your program. Most programming languages have special ways to write down your function.

What we do in python is the following:

```python
def main():
    # code to run our program goes here
    
# two underscode precede and succeed "name" and "main" this is
# important that you type exactly like this
if __name__ == "__main__":
    main()
```

We'll talk more about the more techincal reasons that we do this when we talk about modules, but for now, here is the reason that we care most about:

- Having a `main` function adds nice structure to our program-it tells future programmers (and our TAs) where to look to see what's happening when our program runs.

We care about writing well-structured code and you should too!

*__From Homework 3 onwards, you will be required to have a `main` function__*

Let's look at some examples of well-structured programs that use a `main` function:



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 1

def subtract(x, y):
    s = x - y
    print(str(x) + " - " + str(y) + " = " + str(s))

def main():
    print("This program does some subtraction experiments")
    a = 10
    b = 7
    subtract(a, b)

# if we forget the following statement, our main function
# will never get called! :(
if __name__ == "__main__":
    main()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 2
def subtract(x, y):
    s = x - y
    print(str(x) + " - " + str(y) + " = " + str(s))

def main():
    print("This program does some subtraction experiments")
    a = 10
    b = 7
    subtract(a, b)
    n1 = int(input("Please type an int: "))
    n2 = int(input("Please type an int: "))
    subtract(n1, n2)

if __name__ == "__main__":
    main()

```
</div>

</div>



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# Example 3
def subtract_user():
    x = int(input("Please type an int: "))
    y = int(input("Please type an int: "))
    s = x - y
    print(str(x) + " - " + str(y) + " = " + str(s))

def main():
    print("This program does subtraction four times")
    subtract_user()
    subtract_user()
    subtract_user()
    subtract_user()

if __name__ == "__main__":
    main()

```
</div>

</div>

