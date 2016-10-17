#Josh Burak - 10169785
#Kat Pinto -
#Dhanish Chinniah - 10170731

while [ true ]; do
        read -p "Please enter a number: " num1
        case $num1 in
        *[!0-9]*) echo "Invalid input!" ;;
        *) break ;;
        esac
done

while [ true ]; do
        while [ true ]; do
                read -p "Please enter an operation: " oper
                case $oper in
                +|-|"*"|/) break ;;
                :q) echo "Thanks for using my calculator!"
                exit ;;
                *) echo "Invalid input!" ;;
                esac
        done

        while [ true ]; do
                read -p "Please enter another number: " num2
                case $num1 in
                *[!0-9]*) echo "Invalid input!" ;;
                :q) echo "Thanks for using my calculator!"
                exit ;;
                *) break ;;
                esac
        done
        echo "$num1 $oper $num2"
        result=$(($num1 $oper $num2))
        num1=$result
        echo "Result so far is: $result"
done
