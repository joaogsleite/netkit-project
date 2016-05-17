

if [ "$2" = "email" ]; then	
	if [ "$3" = "monitor" ]; then

		screen -dmS "tunnel$1" bash -c "ssh -N -L 808$1:192.168.255.3:22 admin@10.0.0.129"
		sleep 5
		screen -mS "ssh$1" bash -c "ssh admin@localhost -p 808$1"
	fi
	if [ "$3" = "ftp" ]; then

		screen -dmS "tunnel$1" bash -c "ssh -N -L 808$1:192.168.255.2:22 admin@10.0.0.129"
		sleep 5
		screen -mS "ssh$1" bash -c "ssh admin@localhost -p 808$1"
	fi
fi

if [ "$2" = "http" ]; then	
	if [ "$3" = "monitor" ]; then

		screen -dmS "tunnel$1" bash -c "ssh -N -L 808$1:192.168.255.3:22 admin@10.0.0.130"
		sleep 5
		screen -mS "ssh$1" bash -c "ssh admin@localhost -p 808$1"
	fi
	if [ "$3" = "ftp" ]; then

		screen -dmS "tunnel$1" bash -c "ssh -f -N -L 808$1:192.168.255.2:22 admin@10.0.0.130"
		sleep 5
		screen -mS "ssh$1" bash -c "ssh admin@localhost -p 808$1"
	fi
fi

