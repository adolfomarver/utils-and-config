pkill ThroughputTest
/home/adolfo/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest subscriber \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_best_effort_tcp_large.xml & \ 
/home/adolfo/repos/eprosima/build/fastrtps/test/performance/throughput/ThroughputTest publisher \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/xml/interprocess_best_effort_tcp_large.xml \
--file=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/throughput/payloads_demands_large.csv \