#!/bin/bash
function readdir()
{
for file in `ls $1`
do
 
if [ -d $1"/"$file ]; then
    cd $1"/"$file
    if [ -d ".git" ]; then
        echo $1"/"$file
        git fetch && git merge
    fi
    cd ..
    readdir $1"/"$file
fi
 
done
}
readdir `pwd`
