pkill ThroughputTest
../build/fastrtps/test/performance/throughput/ThroughputTest subscriber \
--xml=../src/fastrtps/test/performance/throughput/xml/interprocess_best_effort_shm.xml & \
perf record ../build/fastrtps/test/performance/throughput/ThroughputTest publisher \
--xml=../src/fastrtps/test/performance/throughput/xml/interprocess_best_effort_shm.xml & \
