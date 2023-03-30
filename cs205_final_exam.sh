#!/bin/awk -f

# MAKE SURE TO RUN:
# ls -l cs205_final_exam.sh
# chmod 755 cs205_final_exam.sh
# ls -l cs205_final_exam.sh
# VERIFY that permissions are -rwxr-xr-x so the file is readable and executable by everyone
# 

# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

# Begin awk script
BEGIN {
// Initialize field delimiter to two spaces so "Type 1" and "Type 2" aren't parsed wrong
FS="  "

# Initialize variables
pokecount=0
avghp=0
avghp=0
}

{
# Perform linewise calculations
# Increment pokecount
pokecount++
# Add field 6 to avghp
avghp+=$6
# Add field 7 to avgatk
avgatk+=$7
}

END {
# Divide avghp by pokecount
avghp/=pokecount
# Divide avgatk by pokecount
avgatk/=pokecount

# Print header
echo " ===== SUMMARY OF DATA FILE ===== "

# Print filename
echo "    File name: $FILENAME "
# Print total number of Pokemon
echo "    Total Pokemon: $POKECOUNT "
# Print average HP of all Pokemon
echo "    Avg. HP: $AVGHP "
# Print average Attack of all Pokemon
echo "    Avg. Attack: $AVGATK "

# Print footer
echo " ===== END SUMMARY ===== "

# End awk script
}
