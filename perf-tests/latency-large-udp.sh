#!/bin/bash
pkill LatencyTest
num_subscribers=1
xml_file="/home/adolfo/repos/eprosima/src/fastrtps/test/performance/latency/xml/interprocess_best_effort_large.xml"
demands_file="/home/adolfo/repos/eprosima/src/fastrtps/test/performance/latency/payloads_demands_large.csv"
if [ "$#" -ge 1 ]; then
    num_subscribers=$1
fi
for i in $(seq 1 $num_subscribers);
do
    ~/repos/eprosima/build/fastrtps/test/performance/latency/LatencyTest subscriber \
    --xml=$xml_file \
    --file=$demands_file & \
done

~/repos/eprosima/build/fastrtps/test/performance/latency/LatencyTest publisher \
-xml=$xml_file \
-file=$demands_file & \
-subscribers=$num_subscribers