#!/bin/bash
file_name=$1
line_count=$(cat $file_name | wc -l)
word_count=$(cat $file_name | wc -w) 
char_count=$(cat $file_name | wc -c)

#Calculate the number of times the word Harry is coming in the file
count_harry=$( grep -oi Harry Harry_Potter_docx_152.txt | wc -l)

# convert all Harry to Harriet in the file and save it as a new file
sed 's/harry/harriet/gI' "Harry_Potter_docx_152.txt" > "Harry_Potter_docx_152_new.txt"

echo "The Number of lines are $line_count"
echo " The Number of words are $word_count"
echo " The Number of characters are $char_count"
echo " occurance of harry $count_harry"
