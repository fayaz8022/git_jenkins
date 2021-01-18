#/bin/bash +x
##############GIT command script#########################
git status
echo "list of files"
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
then    echo "Enter your comment" 
	read MY_COMMENT
	git commit $My_FILE -m "$MY_COMMENT"
else
	echo  file not commited
fi
       git push -u origin master
