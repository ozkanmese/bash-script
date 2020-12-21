#!/bin/bash

echo "Enter the operation number 1:Open Chrome - 2: Create .txt file - 3: Student marking and saved on .txt file - 4: Linux commands "
read number
if [ $number == 1 ]
then
    echo "You selected 1! "
    source number_one.sh
fi

if  [ $number == 2 ]
then 
 echo "You selected 2!"
source number_two.sh 
fi


if  [ $number == 3 ]
then 
 echo "You selected 3!"
source number_three.sh 
fi


if  [ $number == 4 ]
then 
 echo "You selected 4!"
source number_four.sh 
fi
