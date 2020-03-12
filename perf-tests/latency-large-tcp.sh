pkill LatencyTest
~/repos/eprosima/build/fastrtps/test/performance/latency/LatencyTest subscriber \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/latency/xml/interprocess_best_effort_tcp_large.xml & \
~/repos/eprosima/build/fastrtps/test/performance/latency/LatencyTest publisher \
--xml=/home/adolfo/repos/eprosima/src/fastrtps/test/performance/latency/xml/interprocess_best_effort_tcp_large.xml
