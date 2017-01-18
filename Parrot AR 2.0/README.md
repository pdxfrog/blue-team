Before using these scripts, you must modify them for your specific Parrot AR 2.0 quadcopter.


Before running step-1-overwrite-config.sh,
1. telnet into the drone at the default address (192.168.1.1)
2. run the command "cat /data/config.ini"
3. copy the drone_serial number
4. replace the serial number in step-1-overwrite-config.sh with the copied number

5. Choose a new SSID for the drone to use. (The script in the repository uses MobileBeacon.)
6. Replace the default owner_mac (00:00:00:00:00:00) with the mac address of the controlling computer/phone
(OPTIONAL) Use a spoofed mac address to reduce the chance of wireshark being able to identify the controlling computer/phone

The script will reboot the drone. If the drone does not reboot, the changes have not taken effect. 
You can tell the drone has rebooted because the rotors will each twitch once.
If the script fails, rerun it repeatedly within a short time frame.
If that fails, manually cycle the power on the drone and try again.

After the reboot, the drone will have a new SSID, so you will have to reconnect to the WiFi access point.
Once you are connected, run step-2-reconfigure-network.sh

Before running step-2-reconfigure-network.sh,
1. select a new ip address for the drone
2. replace the last octed (35) in 192.168.1.35 in the script with a different number between 1 and 254. Do not use 1, as this is the default.
3. save and run

Note: After running this script, telnet will be disabled.
Additionally, any files transferred to the update folder of the drone will be deleted once per second to discourage script based attacks.

(OPTIONAL)
Run step-3-monitor-connection.sh to verify that telnet is disabled on the default IP,
and to run arp once per second to spot any additional connections that might expose an attacker.