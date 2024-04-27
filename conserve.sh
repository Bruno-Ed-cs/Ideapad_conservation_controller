
#!/bin/bash

# The variable holdinf the driver resposible for the conservation mode
# Fell free to change the driver if it does not work
conservation_driver="/sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode"

mode_status=$(cat $conservation_driver)

if [ -z "$1" ]; then

    if [ "$mode_status" -eq 0 ]; then

        echo "Conservation mode is OFF"

    else

        echo "Conservation mode is ON"

    fi

elif [ "$1" == "-off" ]; then

    echo "Changing into normal mode"
    sudo echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

elif [ "$1" == "-on" ]; then

    echo "Changing into conservation mode"
    sudo echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode

elif [ "$1" == "-help" ]; then

    printf "Battery conservation controller \n\nTemplate = consevation.sh \"-argument\" \n\n-on          Turns the conservation mode on \n-off         Turns conservation mode off \n-help        Displays the option for the controller \n\nNo argument displays the conservation mode status\n "

else

    printf "Invalid option\nUse -help for instructions"

fi


