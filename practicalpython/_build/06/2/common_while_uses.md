---
redirect_from:
  - "/06/2/common-while-uses"
interact_link: content/06/2/common_while_uses.ipynb
kernel_name: python3
has_widgets: false
title: 'Common While Loops Patters'
prev_page:
  url: /06/1/while_loops_basics
  title: 'While Loops'
next_page:
  url: /07/lists
  title: 'Lists'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


"Until x happens" and validating input
==================

Let's take a closer look at two common uses of a while loop. Say that you'd like to continue doing a task until some event happens. For instance, you might want to continue buying stocks until you are out of money or you might want to prompt the user for a password until they enter the correct one.

For both of these instances, we want to test for the opposite of our stop condition in the logical expression because the while loop will continue until that condition is false.

So instead of saying "I want to buy stocks until I have no more money", we can phrase it as "I want to buy stocks __while__ I still have money", which would translate into a logical expression like `money > 0`.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
money = 100 # I start with 100 dollars
while money > 0:
    # buy a stock
    money = money - 4 # let's pretend all stocks cost 4 dollars
    
print("done")

```
</div>

</div>



But what if I want to know *how many* stocks I have bought? We'll want to keep track of this in a separate, counter variable.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
money = 100 # I start with 100 dollars
stocks = 0 # I start with 0 stocks
while money > 0:
    # buy a stock
    money = money - 4 # let's pretend all stocks cost 4 dollars
    stocks += 1 # I bought one stock!
    
print("I have: " + str(stocks) + " stocks!")

```
</div>

</div>



Especially when we start talking about stocks with variable price, we wouldn't just be able to do math to figure out how many stocks we bought!



Validating Input
-----------------

Say we want to guarantee that the user has given us input that is lower case. We can't control a user's behavior, so we'll want to use a while loop to prompt them until they give us input that fits what we want.

Again, we want to rephrase our problem as "prompt the user while they continue to give us bad input". We'll use the string `islower()` function to help us out here.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this, what happens?
while not answer.islower():
    answer = input("Lower case text? ")
print(answer)

```
</div>

</div>



We can often run into bugs where the variable that we want to test won't be initialized until the first iteration of the while loop happens, but we __nevertheless want to test it in our logical expression__. In this case, we'll give our variable (e.g. `answer`) an initial or "dummy" value. This can be any value that makes it so that the loop will definitely run at least once.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: run this, what happens?
answer = "NOT LOWER"
while not answer.islower():
    answer = input("Lower case text? ")
print(answer)

```
</div>

</div>

