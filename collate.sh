#!/bin/bash

#first side
pdftk A=todo.pdf B=title.pdf C=cal_3.pdf D=biz.pdf E=cal_1.pdf F=blank.pdf cat Aeast Beast C Deast E F output side1.pdf

pdfnup --no-landscape --nup 1x2 side1.pdf -o side1nup.pdf

#second sides
pdftk A=blank.pdf B=cal_4.pdf C=blank.pdf D=cal_2.pdf E=graph.pdf F=graph.pdf cat Aeast B Ceast D Eeast Feast output side2.pdf

pdfnup --no-landscape --nup 1x2 side2.pdf -o side2nup.pdf
