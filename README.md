# MagLoopTuner
A short script to read S meter values aloud for tuning a Mag Loop remotely
By default it is set up for a Yaesu FT-450D connected to ttyUSB0 at 38400 baud

# License
CC0 https://creativecommons.org/public-domain/cc0/

# Author

Jeff Luszcz

https://github.com/jeff-luszcz/MagLoopTuner


# Requires

hamlib https://hamlib.github.io

espeak https://espeak.sourceforge.net


Install hamlib either through downloading the source and compiling / installing or use the apt-get or yum command to install

espeak is usually best installed using apt-get or yum  

e.g.
sudo yum install espeak

Make the script executable:
chmod +x maglooptuner.sh

To run:

cd into the directory containing the maglooptuner.sh script and then start the script using this command;

./maglooptuner.sh

# How to use this script to tune a Mag Loop
Turn on your radio and turn the radio's volume up so you can hear it

Set your radio to your desired frequency

Make sure your computer's volume is up so you can hear the text to speech

No other hamlib enabled applications should be running so this script can control the radio

Start the script and hear the current S Meter value read aloud to you

The script will connect to your radio, grab the current s meter value and read it aloud once a second

Tune your Mag Loop for Maximum noise, This will get you to the general area

The S Meter reading should get larger

Tune the loop slowly, wait a second, hear the value and tune up or down depending on what value you hear

You want to tune to MAXIMUM S Meter reading

When you get a maximum value, your loop should be tuned correctly. My Ft-450D reads around "150"

Hit the Tune button on your radio to do any final matching if needed

This allows you to tune your mag loop slowly from a different room or across the room.

To stop, hit Control-C in the shell window to stop the script






