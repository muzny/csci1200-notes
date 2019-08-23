---
interact_link: content/04/6/main.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing a main Function'
prev_page:
  url: /04/5/writing_functions_parameters
  title: 'Writing Functions with Parameters'
next_page:
  url: /04/7/functions_returns
  title: 'Writing Functions with Returns'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


The `main` function
==============

When any program is executed, the kernel needs to know where to start running code. Since python is a scripting language, the programs that we write are executed from top to bottom.

When we start writing more complex programs, it is best to keep our code well-organized by having all code inside of functions. However, if all our code is inside of functions, this begs the question of where should we put the code that actually calls our functions?

By convention, we do this by writing a special function called `main()` that takes no parameters and has no return value. Once we've defined `main()`, we just need to call that function to run our program.

Here is an example using the first program that we wrote:

```python
def main():
    # code to run our program goes here
    print("This is a program.")
    print("It has three print statements.")
    print("They are executed from top to bottom.")
    
main()  # call our main function to run the program
```

Here is a more complex example where we are calling functions that we have defined ourselves:

```python

# this is code from section 4.4
def analyze_name():
    name = input("What is your name? ")
    name_len = len(name)
    print("Your name is " + str(name_len) + " characters long!")


def main():
    # code to run our program goes here
    print("Welcome to our name analyzer!")
    print("We will analyze two names!")
    analyze_name()
    analyze_name()
    
main()  # call our main function to run the program
```


Your `main` function should be a concise summary of what your program does, similarly to a table of contents in a book. Having a `main` function also adds nice structure to our program--it tells future programmers (and our TAs) where to look to see what's happening when our program runs.

We care about writing well-structured code and you should too!

*__From Homework 3 onwards, you will be required to have a `main` function__*

Let's look at some more examples of well-structured programs that use a `main` function:



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

main()

```
</div>

</div>



Notice that our calls to `main()` happen at the end of the program. This is because we need all of our function definitions to be read into the python kernel before we call main!



`main` and `if __name__ == "__main__"`:
------------------

You may encounter code that looks similar to the following:

```python
def main():
    # code to run our program goes here
    
# two underscores precede and succeed "name" and "main"
if __name__ == "__main__":
    main()
```

Read more about this topic in the [section on modules](../../09/modules.html).

