# bash-script

INTRODUCTION:
Bash could be a sort of translator that processes shell commands. A command is given within
the shape of plain content that calls working framework administrations to perform a task.
Commands like ls or cd are regularly utilized by software engineers; these commands are
composed within the terminal. The terminal acts as an interface for the shell mediator.
Any command that can be executed inside the terminal can be placed into a Bash script. Any
plan of orders to be executed inside the terminal can be created as a Bash script.
PROJECT:
This project consists of 1 main and 4 side files. In the main project, data is received from the
user and the appropriate condition is run. specified conditions run other files and each file
performs different functions. All the desired features and functions have been fulfilled in this
project. Redirection is made to other files from the master file and "if conditions" is created.
google was run with "start" command in the first file. A new ".txt" file is created in the second
file. New records were entered into the file created in the third file and the desired record was
filtered. In the fourth file, "ls, mkdir, mv, rmdir" linux commands were executed.
HOMEWORK.SH
CODE:
#!/bin/bash
echo "Enter the operation number 1:Open Chrome - 2: Create .txt file - 3: Student marking an
d saved on .txt file - 4: Linux commands "
read number
if [ $number == 1 ]
then
 echo "You selected 1! "
 source number_one.sh
fi
if [ $number == 2 ]
then
echo "You selected 2!"
source number_two.sh
fi
if [ $number == 3 ]
then
echo "You selected 3!"
source number_three.sh
fi
if [ $number == 4 ]
then
echo "You selected 4!"
source number_four.sh
fi
EXPLANATION:
We got input from the user with "read" and we chose our condition with this input. The
selected conditions ran our other "bash script .sh" files.
NUMBER_ONE.SH
CODE:
#!/bin/bash
echo "1"
start chrome --new-window "www.google.com"
echo "page opened"
EXPLANATION:
We started www.google.com url from chrome application with "start".
NUMBER_TWO.SH
CODE:
#!/bin/bash
echo "2"
printf 'txt file for you.\n' > file.txt
start file.txt
EXPLANATION:
For printing to the standard output, we use echo. Echo is a simple order, but its capabilities
are minimal. Use the printf command to have more control over formatting the output.
printf [-v var] format [arguments] → usage of printf
With this command, we can create a new .txt file and load a boot message into it.
NUMBER_THREE.SH
CODE:
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
EXPLANATION:
If the control expression is valid, the while executes a piece of code and only stops when it is
false (or an explicit break is found inside the executed code. Defined variable
“INPUT_STRING” to use in whilw loop if the user enter “bye” loop is finished. After the
loop we can select a student from the .txt file by “grep”.
NUMBER_FOUR.SH
“LS”
The ls order is an order line utility utilized naturally contribution to list the substance of an
index or catalogs given to it. To standard execution, it composes results. The ls order is
utilized to see an assortment of record data, sort an assortment of alternatives, and rundown
recursively.
“MKDIR”
The mkdir command helps users to create files or directories. The mkdir command can create
several directories at once, and when creating a directory, it can also set permissions. To build
a directory, the user running the command must have sufficient permissions in the parent
directory or receive a permission refused error. With additions we can set the error messages
in order to what we want to show to users.
“RMDIR”
The rmdir command will delete each requested directory. Each directory must be empty in
order for rmdir to be efficient.
“MV”
The mv command transfers files or directories from one place to other. It supports the transfer
of single files, multiple files and folders. “mv” gives a alert before overwriting and has the
option to transfer files that are new to the place.
CODE:
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
 rmdir $remove_file
 fi
if [ $INPUT_STRING == 4 ]
then
 echo "Rename file the file - File name:"
 read file_name
 echo "new file name:"
 read new_name
 mv "$file_name" "$new_name"
 fi