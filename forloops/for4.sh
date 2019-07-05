layer=5 #number of lines 
counter=0 #counter, duh
underscore="_" #underscore literal stored in a variable
while [ $counter -lt $layer ] #iterates a number of times as the layer(5)
do
 if [ $counter -eq 0 ] #checks if counter is zero to just print the "|_"
 then
  line="|$underscore"
 else
  line="| "
 fi
 i=0 #initialise nested while counter
 while [ $i -lt $counter ] # iterates a number of times as $counter
 do
	line="$line|"
	i=` expr $i + 1`
	if [ $i -eq $counter ] #print underscore if counter meets its end
	then
	 line="$line$underscore" 
	else
	 line="$line "
	fi
 done
  counter=` expr $counter + 1 ` #increment counter
 echo "$line" #print line string
done
