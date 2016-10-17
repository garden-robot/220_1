#Question2
#Josh Burak, 10169785
#Dhanish Chinniah, 10170731
#Kat Pinto (Zwach), 10168919
#!/bin/bash
truncate -s 0 ifconfigdata.txt
truncate -s 0 ipaddress.txt
ifconfig >> ifconfigdata.txt
firstIp=$(cat ifconfigdata.txt | grep 'inet addr:*' | head -1 | cut -f 2 -d ':' | cut -f 1 -d 'B' )
secondIp=$(cat ifconfigdata.txt | grep 'inet addr:*' | tail -1 | cut -f 2 -d ':' | cut -f 1 -d 'M' ) 

if [[ ${firstIp} == 127.* ]]; then
	firstIp="$firstIp Local IP"
	echo $firstIp >> ipaddress.txt
else
	if [[ ${firstIp} == 192.168.* ]] || [[${firstIp} == 10.* ]]; then
		firstIp="$firstIp Private IP"
		echo $firstIp >> ipaddress.txt
	else
		firstIp="$firstIp Public IP"
		echo $firstIp >> ipaddress.txt
	fi
fi

if [[ ${secondIp} == 127.* ]]; then
	secondIp="$secondIp Local IP"
	echo $secondIp >> ipaddress.txt
else
	if [[ ${secondIp} == 192.168.* ]] || [[ ${secondIp} == 10.* ]]; then
		secondIp="$secondIp Private IP"
		echo $secondIp >> ipaddress.txt
	else
		secondIp="$secondIp Public IP"
		echo $secondIp >> ipaddress.txt
	fi
fi

cat ipaddress.txt
