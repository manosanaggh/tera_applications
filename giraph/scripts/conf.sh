HOSTNAME=sith5-fast
MY_JAVA_HOME=/opt/manosanag/teraheap/jdk8u345/build/linux-x86_64-normal-server-release/jdk
#MY_JAVA_HOME=/opt/manosanag/jdk8u/build/linux-x86_64-normal-server-release/jdk
BENCHMARK_SUITE="/opt/manosanag/tera_applications_gh_instance_2/giraph/graphalytics-platforms-giraph/graphalytics-1.2.0-giraph-0.2-SNAPSHOT"
BENCHMARK_CONFIG="${BENCHMARK_SUITE}/config"
LOG="$BENCHMARK_SUITE/report/bench.log"
mkdir -p "$BENCHMARK_SUITE/report/"
touch $LOG
HADOOP="/opt/manosanag/tera_applications_gh_instance_2/giraph/hadoop-2.4.0"
ZOOKEEPER="/opt/manosanag/tera_applications_gh_instance_2/giraph/zookeeper-3.4.1"
DATASET_DIR="/home1/public/manosanag/datasets/giraph_2"
RAMDISK_SCRIPT_DIR=/tmp
RAMDISK_DIR=/mnt/ramdisk
# Directory that zookeeper use during experiment
ZOOKEEPER_DIR=/mnt/spark/spark
# Directory that contains the file for teraheap. In case of off-heap experiments
# these directory contains the 
TH_DIR=/mnt/fmap
# Device for HDFS
DEV_HDFS=sdb1
# Device for Zookeeper
DEV_ZK=nvme1n1
# Device for TeraHeap or SD
DEV_TH=nvme0n1
# TeraHeap file size in GB e.g. 900 -> 900GB
TH_FILE_SZ=450
# Heap size for executors '-Xms'
HEAP=60
# Garbage collection threads
GC_THREADS=8
# Number of compute threads
COMPUTE_THREADS=8
# Dataset name
DATASET="datagen-9_0-fb" 
# Benchmarks to run
#BENCHMARKS=( "pr" "bfs" "wcc" "cdlp" "sssp" )
BENCHMARKS=( "wcc" )
# Number of executors
EXECUTORS=1
# cgset accepts K,M,G and eiB, MiB, GiB units for memory limit
MEM_BUDGET=85G
# Total Configurations
TOTAL_CONFS=1
# Card segment size for H2
CARD_SIZE=$((8 * 1024))
# Region size for H2
REGION_SIZE=$((256 * 1024 * 1024))
# Stripe size for H2
STRIPE_SIZE=$((REGION_SIZE / CARD_SIZE ))
