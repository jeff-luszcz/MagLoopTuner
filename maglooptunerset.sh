rigctl -m 1046 --r /dev/ttyUSBO --serial-speed 38400 F 7078000
while sleep 1; do rigctl -m 1046 --r /dev/ttyUSBO --serial-speed 38400 1 RAWSTR | espeak; done
