a=""
for word in $*; 
do 
#echo "$word"
a =${a}"+$word"
echo $a	
done
s = youtube.com/result?search_query=${a}
echo $s
firefox $si
