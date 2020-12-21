#!/bin/bash

 
 echo "press 1 for ls - 2 for mkdir - 3 for rmdir - 4 for mv "
 read INPUT_STRING

 if [ $INPUT_STRING == 1 ]
 then
   echo "here are the list of files"
   ls 
   fi
 if [ $INPUT_STRING == 2 ]
 then
   echo "Enter the file name"
   read newdir
   [ -d newdir ] && echo "Directory Exists" || mkdir $newdir  
 fi 

  if [ $INPUT_STRING == 3 ]
 then
   echo "remove the file"
   read remove_file 
   rmdir  $remove_file
   
   fi 
if [ $INPUT_STRING == 4 ]
then 
  echo "Rename file the file - File name:"
  read  file_name
  echo "new file name:"
  read new_name
  mv "$file_name" "$new_name"
  fi 