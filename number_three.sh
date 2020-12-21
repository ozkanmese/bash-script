#!/bin/sh

INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  echo "Student name?"
  read name
  echo "Student mark"
  read mark
  printf "\nName : $name - Mark: $mark \n" >> file.txt
  echo "Please type something in (bye to quit or anything to continue)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done
 echo "enter the student name which you want to find:"
 read std_name
  echo file.txt | grep "$std_name" file.txt