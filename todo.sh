#!/bin/bash
echo "fetching tasks"
python fetch_tasks.py > todo.md

echo "creating pdf"
pandoc  --template=template.tex --variable mainfont="DejaVu Sans" --variable sansfont="DejaVu Sans" --variable fontsize=14pt --latex-engine=xelatex todo.md -o todo.pdf  --variable geometry:margin=2cm
#pdfnup  --nup 2x1 todo.pdf -o todo.split.pdf
