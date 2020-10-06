#!/bin/bash 
echo "Welcome to Calculate Employee Wage";

value=$((RANDOM%2));
echo $value;
if [ $value == 1 ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi

EMPLOYEE_PER_HOUR_WAGE=100;
FULL_DAY_HOUR=8;

MAX_WORKING_DAYS=20;
MAX_WORKING_HOURS=100;

totalWorkingHrs=0;
workingDays=1;

function getWorkHours() {
        case $1 in
                1) workHours=4;;
                2) workHours=8;;
		*) workHours=2;;
        esac
        echo $workHours;
}

while [[ $totalWorkingHrs -lt $MAX_WORKING_HOURS && $workingDays -lt $MAX_WORKING_DAYS ]]
do
	
	resWorkDonePerDay=$( getWorkHours $((RANDOM%3)) );
	#calculating the wage	
        wage=$((resWorkDonePerDay * EMPLOYEE_PER_HOUR_WAGE));
        #calculating the final wage
	finalWage=$((finalWage + wage));
        #calculating the total working hours
	totalWorkingHrs=$((totalWorkingHrs + resWorkDonePerDay));
	workingDays=$((workingDays + 1));
done

echo "The Total salary earn by the Employee :"$finalWage;
