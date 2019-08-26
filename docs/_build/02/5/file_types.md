---
redirect_from:
  - "/02/5/file-types"
interact_link: content/02/5/file_types.ipynb
kernel_name: python3
has_widgets: false
title: 'File Types and Python'
prev_page:
  url: /02/4/debugging_python_code
  title: 'Debugging Python Code'
next_page:
  url: /03/datatypes-and-variables
  title: 'Datatypes and Variables'
comment: "***PROGRAMMATICALLY GENERATED, DO NOT EDIT. SEE ORIGINAL FILES IN /content***"
---


File Types and Python
=================

So far, we've been working mostly with files that have a `.ipynb` extension. This tells the computer that they are jupyter notebooks. (Jupyter notebooks used to be called ipython notebooks, hence ipynb).

When we are writing python code, there is one more important file type for you to know about--the `.py` file. We can think of `.py` files as the "basic" or "raw" file type for python code. These are files where you will have python code and nothing else.

If we make a `.py` file in Jupyter Lab (click "Text File" under "Other" in the Launcher, then rename your file to "myfile.py"), we can write python code in it, but notice that there are no run buttons like in your jupyter notebooks.

You've still written python code, we would just need to send it to a python interpreter/kernel to actually run it. This is different than jupyter notebooks, which run a python kernel for you so that you can run the code in each cell.

You might find yourself wondering "if jupyter notebooks do all of this for me, why would anyone want to write a `.py` file?". 


`.py` files are in fact how most python code is written. They are very flexible, and they are going to be the way that programmers can easily share code between programs. The answer to this will become clearer [when we study modules](../../09/modules.html), but for now, you should understand that `.py` files are the "raw" format for files written in python.

Even though we are writing python code in our `.ipynb` files, they come with some bells and whistles that are not inherently a part of python code.

Todo: explore the the "File" menu in Jupyter Lab. What happens when you choose "Export Notebook As -> Export Notebook to Executable Script" ?


