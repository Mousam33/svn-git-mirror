#!/bin/sh

# Limit all incoming and outgoing network to 1kbit/s
tc qdisc add dev eth0 handle 1: ingress
tc -s qdisc ls dev eth0.
tc filter add dev eth0 parent 1: protocol ip prio 50 u32 match ip src 0.0.0.0/0 police rate 1kbit burst 10k drop flowid :1
tc -s qdisc ls dev eth0.
tc qdisc add dev eth0 root tbf rate 1kbit latency 25ms burst 10k
tc -s qdisc ls dev eth0.
tail -f /dev/null
