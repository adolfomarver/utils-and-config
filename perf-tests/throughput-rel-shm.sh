pkill ThroughputTest
~/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest subscriber \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_reliable_shm.xml & \
~/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest publisher \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_reliable_shm.xml & \
