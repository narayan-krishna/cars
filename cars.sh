#! /bin/bash
# cars.sh
# Krishna Narayan
INPUT="0"
while [ "$INPUT" -ne "3" ]
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit program"
	read -r INPUT
	case "$INPUT" in
		"1") echo "Type in the year of car"
		read -r YEAR
		echo "Type in the make of the car"
		read -r MAKE
		echo "Type in the model of the car"
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars;;
		"2") sort My_old_cars;;
		"3") echo "Goodbye";;
		*) echo "Invalid input, please enter a valid input";;
	esac
done
