arr=(5 4 3 2 1)

n=${#arr[@]}

for ((i=0; i<n-1; i++))
do

    min=i

    for ((j=i+1; j<n; j++))
    do
        if [[ ${arr[j]} < ${arr[min]} ]]; then
            min=$j
        fi
    done

    temp=${arr[i]}
    arr[i]=${arr[min]}
    arr[min]=$temp
done

echo ${arr[@]}
