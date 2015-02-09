#!/bin/bash

#generate todo
echo todo
./todo.sh

#generate cal
echo cal
./cal.sh

#generate cover page
echo cover
./cover.py --text '3/3/2015 - 8/8/2015' --image cover.png

#generate graph
echo graph
./graph.sh

#biz
echo biz
./biz.sh


