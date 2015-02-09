#!/bin/bash

#first side
#pdftk A=todo.pdf B=title.pdf C=cal_3.pdf D=biz.pdf E=cal_1.pdf F=blank.pdf cat Aeast Beast C Deast E F output side1.pdf

#pdfnup --no-landscape --nup 1x2 side1.pdf -o side1nup.pdf

#second sides
#pdftk A=blank.pdf B=cal_4.pdf C=blank.pdf D=cal_2.pdf E=graph.pdf F=graph.pdf cat Aeast B Ceast D Eeast Feast output side2.pdf

#pdfnup --no-landscape --nup 1x2 side2.pdf -o side2nup.pdf

pdftk A=todo.pdf B=cover.pdf C=blank.pdf D=cal_4.pdf E=cal_3.pdf F=biz.pdf G=blank.pdf H=cal_2.pdf I=cal_1.pdf J=blank.pdf K=graph.pdf L=graph.pdf cat Aeast Beast Ceast D E Feast Geast H I Jeast Keast Least output cal_a4.pdf

pdfnup --no-landscape --nup 1x2 cal_a4.pdf -o cal_a5.pdf
