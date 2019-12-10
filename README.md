Introduction to Computational Thinking in Python
======================

__By [Felix Muzny](https://nlp.stanford.edu/~muzny/)__.  
  
These course notes were originally designed go alongside the content for CSCI 1200 at the University of Colorado, Boulder. They are written as a series of jupyter notebooks and can be made into a servable book via the [jupyter-book](https://github.com/jupyter/jupyter-book) package.  
  
The contents of this book are licensed for free consumption under the following license: [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/).  
  
Current status:  
buildable: ✅  
within-book links: ✅  
pictures/media support working: unchecked  
all sections present: ❌ (matplotlib section missing)

Building
--------

To build and serve these notes as a book locally:

```
$ jupyter-book build docs/
$ ./run.sh full/path/to/docs/
```

Your book will be accessible at `http://0.0.0.0:4000/`.  
  

Make sure that you have the [`jupyter-book`](https://github.com/jupyter/jupyter-book) package installed and that you have followed their instructions regarding [building books locally](https://jupyter.org/jupyter-book/guide/03_build.html#build-the-books-site-html-locally).

If you'd like to look at the contents in their "plain" `.ipynb` format without building the entire book, you can find all notebooks in the `docs/content/` folder.
