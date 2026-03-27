#1/bin/bash



count= 1;

tot_count= wc -l < names.txt


while [ $count -le $tot_count]; do
    echo ""






while read names; do

    if [ $names == 'Callum' ]; then
        echo "I have found the Callum"

        else
            echo "There is no callum here"
            exit 0
    fi 

done < names.txt

echo $count


