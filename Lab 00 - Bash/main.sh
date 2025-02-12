input="$1"
touch output.txt
while read -r line
do
    token=( $line )
    mark=${token[2]}
   
#    "$line"| cut -d" " -f3 > temp.txt
    
    if [ $mark -ge 16 ]
    then comment="Very good"
    elif [ $mark -ge 14 ]
    then comment="Good"
    elif [ $mark -ge 12 ]
    then comment="Fairly well"
    elif [ $mark -ge 10 ]
    then comment="Medium"
    else comment="Insufficient"
    fi

    echo ${token[0]} ${token[1]} ${token[2]} "$comment" >> output.txt      
	       
done < "$input"
