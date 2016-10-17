#Question 3
#Josh Burak, 10169785
#Dhanish Chinniah, 10170731
#Kat Pinto (Zwach), 10168919

 echo Welcome to the CISC 220 Racing Arena
 echo User 1 press 1 to move foreward, User 2 press 2, and User 3 press 3 

lane1='|->'                                      #Lane 1#

lane2='|->'                                      #Lane 2#

lane3='|->'                                      #Lane 3#

count1=0
count2=0
count3=0

while [ true ]; do
	read -p "GO!" press
	clear 
	if (( $count1==40 )); then
		echo Player 1 wins!
		break
	elif (( $count2==40 )); then
		echo Player 2 wins!
		break
	elif (( $count3==40 )); then
		echo Player 3 wins!
		break
	elif (( $press==1 )); then
		count1=$((count1+1))
		for ((i=0; i<=count1; i++)); do     
			printf "~"; done
		echo $lane1
		echo $lane2
		echo $lane3
	elif (( $press==2 )); then
		echo $lane1
		count2=$((count2+1))
		for ((i=0; i<=count2; i++)) do
			printf "~"; done
		echo $lane2
		echo $lane3
	elif (( $press==3 )); then
		echo $lane1
		echo $lane2
		count3=$((count3+1))
		for ((i=0; i<=count3; i++)) do
			printf "~"; done
		echo $lane3
	fi
done	


