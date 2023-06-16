#!/bin/bash

#while true
#do
#    free -g | grep Mem | awk -F " " '{print $6}' >> $1
#    sleep 1
#done


# Output file name
NUM_OF_EXECUTORS=$2

# Get the proccess id from the running
processId=""
numOfExecutors=0

while [ ${numOfExecutors} -lt "${NUM_OF_EXECUTORS}" ] 
do
    # Calculate number of executors running
    numOfExecutors=$(jps |grep -c "YarnChild")
done

# Executors
processId=$(jps |\
    grep "YarnChild" |\
    awk '{split($0,array," "); print array[1]}')

# Counter
i=0

for execId in ${processId}
do
	while [ -e /proc/$execId ]; do
    		df -h | grep "nvme0n1" | awk -F " " '{print $3}' >> "$1_h2_${i}.txt"
    		df -h | grep "nvme1n1" | awk -F " " '{print $3}' >> "$1_shuffling_${i}.txt"
		sleep 1	
	done
  	i=$((i + 1))
done
