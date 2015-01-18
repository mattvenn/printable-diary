# Printable Diary

Don't have a smart phone but want to continue making use of your online (google)
calendar?

The idea here is to print a diary, one month at a time that includes your todo
list (trello), business cards, blank and graph paper etc.

It is very rough around the edges. All done with shell scripts, pdftk and
pdfnup. Everytime I print a diary it gets a bit better. I may move to
[pypdf2](https://pythonhosted.org/PyPDF2/PdfFileReader.html) in the future.

# Making it

## Calendar

go to your google calendar, click 'more', 'print', then choose 4 weeks in
landscape. Then 'save as'.

Make a symlink to it called 'current_cal.pdf':

    ln -s calendar_2015XXXXX.pdf current_cal.pdf

## Trello

Move trellokeys.blank to trellokeys.py and add your API details.
You can run ./fetchtasks.py to test it's working. It will download all tasks in
the 'Doing' set of the 'tasks' board. Change the file if you have to.

## Generating all the pdfs

run prep.sh

## Collating into a single pdf for double sided printing

collate.sh

# Log

what I did last time:

print side1nup.pdf on 3 sheets
then put in the other side up, so that cover image is at top of printer

what happened:

second set of pages were wrong way round. printer prints 'upside down' so that the bottom of the page is closest to the print head after printing. I think it would be ok if both put in the same way.
