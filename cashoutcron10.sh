#!/bin/bash
cd /root/swarm
echo 'Start'
timestamp=`date '+%Y-%m-%d %H:%M:%S'`
echo $timestamp
echo 'Node-1'
./cashout.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-2'
./cashout2.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout2.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-3'
./cashout3.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout3.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-4'
./cashout4.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout4.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-5'
./cashout5.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout5.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-6'
./cashout6.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout6.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-7'
./cashout7.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout7.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-8'
./cashout8.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout8.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-9'
./cashout9.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout9.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'Node-10'
./cashout10.sh | awk '{sum+=$2} END {print "sum=",sum}'
./cashout10.sh cashout-all 5
sleep 10
ps -ef | grep cashout | grep -v grep | awk '{ print $2 }' | xargs kill -9
echo 'End'
