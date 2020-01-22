cd ./_site/publications/
for FILE in $(ls)
do
    if [ $FILE != "index.html" ]
        then
            mkdir "${FILE%%.*}"
            mv $FILE "${FILE%%.*}"/index.html
    fi
done