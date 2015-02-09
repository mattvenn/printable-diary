#!/usr/bin/env python
# -*- coding: utf-8 -*-

import argparse
import svglue
import cairosvg

parser = argparse.ArgumentParser(description="read meter, post to internet and send to energy wristband")
parser.add_argument('--text', action='store', 
    help="text")
parser.add_argument('--image', action='store', 
    help="image")
args = parser.parse_args()

# load the template from a file
tpl = svglue.load(file='cover-template.svg')

# replace date
tpl.set_text('sample-text', args.text)

# replace the pink box with 'hello.png'. if you do not specify the mimetype,
# the image will get linked instead of embedded
tpl.set_image('yellow-box', file=args.image)

# to render the template, cast it to a string. this also allows passing it
# as a parameter to set_svg() of another template
src = str(tpl)

# write out the result as an SVG image and render it to pdf using cairosvg
with open('cover.pdf', 'w') as out:
    cairosvg.svg2pdf(bytestring=src, write_to=out)
