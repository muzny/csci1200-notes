CSCI 1200 Course Notes
======================

These course notes go alongsidde the content for CSCI 1200 at the University of Colorado, Boulder. They are written as a series of jupyter notebooks and can be made into a servable book via the [jupyter-book](https://github.com/jupyter/jupyter-book) package.

Current status:
buildable: ✅
within-book links: ❌
pictures/media support working: unchecked
all sections pressent: ❌ 

Building
--------

To build and serve these notes as a book locally:

```
$ jupyter-book build 1200notes/
$ ./run.sh full/path/to/1200notes/
```

Make sure that you have the [`jupyter-book`](https://github.com/jupyter/jupyter-book) package installed and that you have followed their instructions regarding [building books locally](https://jupyter.org/jupyter-book/guide/03_build.html#build-the-books-site-html-locally).

If you'd like to look at the contents in their "plain" `.ipynb` format without building the entire book, you can find all notebooks in the `1200notes/content/` folder.
