# Printable Diary

Don't have a smart phone but want to continue making use of your online (google)
calendar?

The idea here is to print a diary, one month at a time that also includes your
todo list (trello), business cards, blank and graph paper, nice title photo etc.

It is very rough around the edges. Currently all done with shell scripts, pdftk
and pdfnup. Everytime I print a diary it gets a bit better. I may move to
[pypdf2](https://pythonhosted.org/PyPDF2/PdfFileReader.html) in the future.

# Requirements

* for todo list stuff: pandoc (maybe xelatex too), trello python library
* pdftk, pdfnup

# Making it

## Title image

put an image called title.png in the directory

## Biz cards

these are tear off business cards. I made an svg doc called biz.svg you can
modify.

## Calendar

go to your google calendar, click 'more', 'print', then choose 4 weeks in
landscape. Then 'save as'.

Make a symlink to it called 'current_cal.pdf':

    ln -s calendar_2015XXXXX.pdf current_cal.pdf

I'd love to automate this but have no idea how to interact with all the
javascript on the google calendar page.

## Trello

Move trellokeys.blank to trellokeys.py and add your API details.
You can run ./fetchtasks.py to test it's working. It will download all tasks in
the 'Doing' set of the 'tasks' board. Change the file if you have to.

## Generating all the pdfs

run prep.sh:

    ./prep.sh

you should now have a load of pdfs in your directory: 

biz.pdf blank.pdf cal_1.pdf cal_2.pdf cal_3.pdf cal_4.pdf graph.pdf title.pdf todo.pdf

## Collating into a single pdf for double sided printing

This collates everything in the right order, rotating everything apart from the
calendars.

    ./collate.sh

Now you have: cal_a4.pdf and cal_a5.pdf for printing. Print double sided, short
edge binding. Or first all odd pages then back in the printer and even pages.

# Log

what I did last time:

print side1nup.pdf on 3 sheets
then put in the other side up, so that cover image is at top of printer

what happened:

second set of pages were wrong way round. printer prints 'upside down' so that the bottom of the page is closest to the print head after printing. I think it would be ok if both put in the same way.
