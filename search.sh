arr=(3 2 6 8 1)

n=${#arr[@]}

search=8

found=0

for ((i=0; i<n; i++))
do
    if [[ ${arr[i]} == $search ]]; then
        echo "Element found at index $i"
        found=1
        break
    fi
done

if [[ $found == 0 ]]; then 
    echo "Element not found in the array"
fi
