layers=5
counter=0
while [ $counter -lt $layers ]
do
 i=0
 counter=` expr $counter + 1 `
 output=""
 while [ $i -lt $counter ]
 do
  i=` expr $i + 1 ` 
  output="$output$i"
 done
 echo $output
done
