#!/bin/bash
WEBSITE_FOLDER=/home/rnovelo/Desktop/AAAI-Chapter
rsync -rv --exclude=.git ./aaaimx-website $WEBSITE_FOLDER
cd $WEBSITE_FOLDER/aaaimx-website
git commit -am "deploy" && git push origin master