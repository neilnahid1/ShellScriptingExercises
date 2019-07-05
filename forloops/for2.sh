layers=5
counter=0
while [ $counter -lt $layers ]
do
 i=0
 line=` expr $counter + 1 `
 while [ $i -lt $counter ]
 do
 j=` expr $counter + 1 `
 line="$line$j"
 i=` expr $i + 1 `
 done
 echo $line
 counter=` expr $counter + 1 `
done

