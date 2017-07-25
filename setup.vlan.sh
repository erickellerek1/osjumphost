#!/bin/sh

if [ $# -ne 1 ]
then
	echo "please provide an argument up|down"
	exit 1
fi

test -z ${JHIFACE} && export JHIFACE=eth0
test -z ${VLANID} && export VLANID=426
test -z ${MASKIP} && export MASKIP=192.168.0.165/26

if [ "${1}" = "up" ]
then
	ip a | grep -qa ${JHIFACE}.${VLANID} && exit 0
	ip link add link ${JHIFACE} name ${JHIFACE}.${VLANID} type vlan id ${VLANID}
	ip link set ${JHIFACE}.${VLANID} up
	ip a a ${MASKIP} dev ${JHIFACE}.${VLANID}
elif [ "${1}" = "down" ]
then
	ip a | grep -qa ${JHIFACE}.${VLANID} || exit 0
	sudo ip link delete ${JHIFACE}.${VLANID}
fi
