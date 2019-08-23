# Usage:
# ./run.sh fullpath/to/book/folder
# this script is for serving the book locally via jekyll and docker. Docker must be set up on your machine beforehand.
# Once it is running the book will be available at 
# http://0.0.0.0:4000/jupyter-book/

LOCATION=$1
docker run --rm --security-opt label:disable -v $LOCATION:/srv/jekyll -p 4000:4000 -it -u 1000:1000 emdupre/jupyter-book bundle exec jekyll serve --host 0.0.0.0
