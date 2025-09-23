#!/bin/bash
#File: hello_world.sh
#Purpose: Basic greeting script with variables

#Define variables
user_name="Chethan"
Current_date=$(date)
current_directory=$(pwd)
Script_name="Hello World Script"

# Print gretting
echo "==================="
echo "  $script_name"
echo "==================="
echo ""
echo "Hello, $user_name!"
echo "Today's date is = $Current_date"
echo "present Directory = $current_directory"
echo "Welcome to shell scripting!"
echo ""
echo "script executed successfully"

#Explaination
# #!/bin/bash - Shebang line tells system which interpreter to use
# Varibles are defined withou spaces around =
# $(date) - Command substitution to capture date command output
# echo prints text to screen
# $VARIABLE_NAME - Access variable value
