---
redirect_from:
  - "/09/3/writing-modules"
interact_link: content/09/3/writing_modules.ipynb
kernel_name: python3
has_widgets: false
title: 'Writing Modules'
prev_page:
  url: /09/2/measuring_runtime
  title: 'Example: Measuring Runtime'
next_page:
  url: /10/file-io
  title: 'File input/output'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


`main` and `if __name__ == "__main__"`:
------------------

Another common programming pattern that you will likely encounter in python is when we hide the call to `main` in a guard that prevents the  main function from running if this code was imported as a module.


```python
def main():
    # code to run our program goes here
    
# two underscores precede and succeed "name" and "main" this is
# important that you type exactly like this
if __name__ == "__main__":
    main()
```

We'll talk more about the more techincal reasons that we do this when we talk about modules.

