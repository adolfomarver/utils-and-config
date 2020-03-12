pkill ThroughputTest
~/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest subscriber \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_best_effort.xml
--file=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/payloads_demands.csv & \
~/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest publisher \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_best_effort.xml & \
