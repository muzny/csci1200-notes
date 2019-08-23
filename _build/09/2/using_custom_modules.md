---
redirect_from:
  - "/09/2/using-custom-modules"
interact_link: content/09/2/using_custom_modules.ipynb
kernel_name: python3
has_widgets: false
title: 'Using Custom Modules'
prev_page:
  url: /09/1/using_modules
  title: 'Using Modules'
next_page:
  url: /09/3/writing_modules
  title: 'Writing Modules'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Using Custom Modules
=================

Sometimes, we might want to use a module that python doesn't come with by default. We'll call these modules "custom modules".

When we talk about using custom modules, it's important to understand that a module is really just a nicely encapsulated collection of functions.

Let's say, for example, that the instructor of your class wanted to provide you with some pre-written functions to use in your homework. Rather than telling you to copy + paste the functions into your program, they would like to provide them as a module so that you can use the functions in your program, but not modify their contents.

To do this, your instructor will provide you with code [as a .py file](../../02/5/file_types.html), for example `secrets.py`.

The contents of `secrets.py` may look something like the following:

```

def hello(name):
    print("Hello " + name)
    print("This greeting came from the hw1 module!")
    
def goodbye():
    print("Goodbye from the hw1 module)
    
```

Now, the question becomes, how does one go about actually *using* the code your instructor provided as a module?



Step 1: Ensure that the module is in the proper location
------------------

To access a module that has been provided as a `.py` file, the `.py` file needs to be __in the same folder as your program__.

For example, you may be working in your `homework2/` folder, which is located in your `computer_science` folder:

```
computer_science/
    homework1/
        homework1.ipynb
    homework2/
        homework2.ipynb
```

To use the module that your instructor has provided in `homework2.ipynb`, it should be placed in your `homework2` folder:


```
computer_science/
    homework1/
        homework1.ipynb
    homework2/
        homework2.ipynb
        secrets.py
```



Step 2: Import the module
------------------

Now that the files are in the appropriate locations, we can use the functions in the module after we import the module in our code.

```
import secrets

secrets.hello("Spock")
secrets.goodbye()
```

