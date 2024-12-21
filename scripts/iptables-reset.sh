#!/bin/bash

# IPv6

##
## set default policies to let everything in
ip6tables --policy INPUT   ACCEPT;
ip6tables --policy OUTPUT  ACCEPT;
ip6tables --policy FORWARD ACCEPT;

##
## start fresh
ip6tables -Z; # zero counters
ip6tables -F; # flush (delete) rules
ip6tables -X; # delete all extra chains

# IPv4

## 
## set default policies to let everything in
iptables --policy INPUT   ACCEPT;
iptables --policy OUTPUT  ACCEPT;
iptables --policy FORWARD ACCEPT;

##
## start fresh
iptables -Z; # zero counters
iptables -F; # flush (delete) rules
iptables -X; # delete all extra chains
