#!/bin/bash
SEARCH=$(whiptail --title "Test Free-form Input Box" --inputbox "Type what you want to search in youtube" 10 60    3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
	    echo 
	    for w in $*;
    do
	    	a="$a+$w";
	done
	firefox youtube.com/results?search_query=${a#?} $SEARCH
         else
		a  = ""
		 for word in $*; 
		 do 
			 #echo "$word"
			 a =${a}"+$word"
			 echo $a	
		 done
		 s = youtube.com/results?search_query=${a#?}
		 echo $s
		 firefox $si
	        echo "You chose Cancel."
	fi

