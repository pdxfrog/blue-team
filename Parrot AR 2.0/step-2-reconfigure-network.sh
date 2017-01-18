telnet 192.168.1.1 <<EOF

foobar(){
sleep 1
ifconfig ath0 down; ifconfig ath0 192.168.1.35 netmask 255.255.255.0 up
sleep 1
killall telnetd

while :; do
	rm -rf /update/*
	sleep 1
done
}

foobar &


EOF
