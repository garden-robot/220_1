#Question 4, Part One
#Joshua Burak - 10169785
#Dhanish Chinniah - 10170731
#Kat Pinto (Zwach) - 10168919
#!/bin/bash
filename='savedPermissions'
if [[ -e $filename.txt ]]; then
	i=1
	while [[ -e $filename$i.txt ]]; do
		let i++
	done

fi
echo $filename$i created 
ls | xargs stat --printf "$%A %n \n" >> $filename$i.txt



