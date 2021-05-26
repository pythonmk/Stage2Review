new=(5 9 2 4 7)

size=${#new[@]}

for((i=0; i<=$(($size-1)); i++))
do 
   for((j=0; j<=$(($size-1)); j++))
   do
	if((${new[j]} > ${new[$((j+1))]}));
	then
	 temp=${new[$j]}
	 new[$j]=${new[$((j+1))]}
	 new[$((j+1))]=$temp
	  fi
   done
done
echo "Largest Number: ${new[size-1]}"