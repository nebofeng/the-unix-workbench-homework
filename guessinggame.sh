#! /bin/bash


#num=`ls  $(dirname "$0") | wc -l `
num=0
#ls  $(dirname "$0") | while read file 
#while read  file
#do
# let "num=num+1"
# echo $num "==="
#done < ` ls $(dirname "$0")`
# echo $num
files=`ls $(dirname "$0")`
for i in  $files
do
  let "num=num+1"
done

ask (){
 echo "how many file are in the current directory ?"
 read line
 expr $line + 1 &> /dev/null
if [ $? -eq  0 ]  #if true  line  is a number and not -1

then
      if [ $line -gt 0 ] 
      then   
        if [  $line -gt  $num ]
        then
          echo "the answer is higher "
          ask

        elif [ $line  -lt  $num ]
          then
          echo "the answer is lower "
          ask
        else
          echo "you are right! "
        fi
      else
        echo "the number must higher than 0"
        ask
      fi
   
else  #not a number or the number is -1
   if  [ $line -eq  -1 ]
   then
     echo "the answer is must higher than 0"
     ask
   else
     echo "please input a number "
     ask
   fi

fi
}

ask
