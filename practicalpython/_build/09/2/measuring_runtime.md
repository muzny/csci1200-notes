---
redirect_from:
  - "/09/2/measuring-runtime"
interact_link: content/09/2/measuring_runtime.ipynb
kernel_name: python3
has_widgets: false
title: 'Example: Measuring Runtime'
prev_page:
  url: /09/1/using_modules
  title: 'Using Modules'
next_page:
  url: /10/file-io
  title: 'File input/output'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


Runtime
========

Runtime is the amount of time that it take for a program or piece of code to run. It can either be measured in real time (minutes, seconds, milliseconds, etc) or in *number of operations*. Computer scientists study runtime most often in terms of number of operations, but it is much easier for us to see the effects of different runtimes directly if we measure using real time.

To do our measurements we will use the `time` module (see [section 9.1](01_using_modules.ipynb) for instructions on how to import modules).


There are four important pieces to using the `time` module to measure how long code takes to run:

```python
import time  # 1) import the module


# 2) get the initial time
start = time.time()
# code that you want to time goes here
super_complex_math = 1 + 3

# 3) get the ending time
end = time.time()

# 4) calculate the elapsed time
elapsed = end - start
```

A Note on Scientific Notation
-------------

You'll notice in the example below that scientific notation is used when numbers are very very small, for example.

A number that looks like `1.0e-05` is equivalent to `1.0 * (10 ** -5)` or `.00001`.



<div markdown="1" class="cell code_cell">
<div class="input_area" markdown="1">
```python
# TODO: Run me! How long does this code take to run? Does it always take the same amount of time?
# Answer:
# Challenge! Change the code that is being timed—can you make it so that it takes 1 full second to run?


import time  # 1) import the module


# 2) get the initial time
start = time.time()
# code that you want to time goes here
super_complex_math = 1 + 3

# 3) get the ending time
end = time.time()

# 4) calculate the elapsed time
elapsed = end - start
print("That took: " + str(elapsed) + " seconds")

```
</div>

</div>

