!#/bin/bash +x
###############GIT command script#########################
git status
read MY_FILE 
if [ -f $MY_FILE ]
then
	git add $MY_FILE
	echo "file added"
else
	git status |grep -e "nothing to commit" > MY_GREP
	if [ if -f ls -l MY_GREP  ]
	then
		exit 0
	fi	
	
	echo "file not found"
fi
git status
echo "do want to commit the changes type yes to commit"
read MY_ANSWER
if [ $MY_ANSWER = yes ]
then    
	read MY_COMMENT
	git commit $My_FILE -m echo"entercomment "$MYCOMENT""
else
	echo  file not commited
fi
git push -u origin master
