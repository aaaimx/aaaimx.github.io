HOST=$(echo $(hostname -I) | tr " " "\n")
echo ${HOST[0]}