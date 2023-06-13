#!/usr/bin/env bash

###################################################
#
# file: myjstat.sh
#
# @Author:  Iacovos G. Kolokasis
# @Version: 19-01-2021
# @email:   kolokasis@ics.forth.gr
#
# @brief    This script calculate the
# serialziation/deserialization overhead
###################################################

# Output file name
OUTPUT=$1        
NUM_OF_EXECUTORS=$2

#ASYNC_PROF=../../util/async-profiler
ASYNC_PROF=./async-profiler-2.9-linux-x64

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
  "${ASYNC_PROF}"/profiler.sh -d 40000 -i 10ms -o collapsed ${execId} > "${OUTPUT}_$i.txt" &

  i=$((i + 1))
done
