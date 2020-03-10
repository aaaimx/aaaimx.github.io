
# npm run get:members && npm run get:partners
bundle exec jekyll build    
cd ./_site/publications/
for FILE in $(ls)
do
    if [ $FILE != "index.html" ]
        then
            mkdir "${FILE%%.*}"
            mv $FILE "${FILE%%.*}"/index.html
            echo $FILE
    fi
done
cd ../../
npm run publish