!#/bin/bash +x
git status
read MY_FILE 
if [ -f $MY_FILE ]
then
	git add $MY_FILE
	echo "file added"
else
	echo "file not found"
fi
git status
echo "do want to commit the changes type yes to commit"
read MY_ANSWER
if [ $MY_ANSWER = yes ]
then    
	read MY_COMMENT
	git commit $My_FILE -m {"entercomment "$MYCOMENT""}
else
	echo  file not commited
fi