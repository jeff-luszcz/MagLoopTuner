# MagLoopTuner

**MagLoopTuner** is a simple script designed to read S Meter values aloud using text-to-speech for remotely tuning a magnetic loop antenna (“Mag Loop”). This makes it easy to find the best tuning position, even if you're not right next to your radio.

By default, MagLoopTuner is configured for a **Yaesu FT-450D** connected to `/dev/ttyUSB0` at 38400 baud. A companion script, `maglooptunerset.sh`, adds the ability to set the radio frequency before it begins reading S Meter values aloud.

---

## Features

- Speaks S Meter readings once per second to help you tune your Mag Loop for maximum signal.
- Remote operation: Allows you to tune your antenna from across the room or even another room.
- Optional script to set the radio frequency via command line before reading S Meter values.

---

## Requirements

- [hamlib](https://hamlib.github.io)  
  Used for communication with your radio.  
  Install via package manager or source:
  ```sh
  sudo apt-get install hamlib
  # or
  sudo yum install hamlib
  ```

- [espeak](https://espeak.sourceforge.net)  
  For text-to-speech output.
  ```sh
  sudo apt-get install espeak
  # or
  sudo yum install espeak
  ```

---

## Installation & Usage

1. **Clone or Download this repository**

2. **Make the scripts executable:**
   ```sh
   chmod +x maglooptuner.sh
   chmod +x maglooptunerset.sh
   ```

3. **Run the main script:**
   ```sh
   ./maglooptuner.sh
   ```
   Or add the script to a directory in your `$PATH` for easier access.

---

## Tuning a Mag Loop with This Script

1. **Power on your radio** and set the volume so you can clearly hear it.
2. **Set your desired frequency** on the radio (or use `maglooptunerset.sh` to do this from your computer).
3. **Ensure your computer's audio** is loud enough to hear the spoken S Meter values.
4. **Close any other hamlib-enabled applications** or anything else using the same serial port.
5. **Start the script** to begin hearing S Meter values spoken aloud once per second.
6. **Tune your Mag Loop for maximum S Meter reading:**  
   - Slowly adjust the loop.
   - Pause a second after each adjustment.
   - Listen for the S Meter value to increase.
   - Aim for the maximum S Meter value you can achieve.
7. **Once at maximum,** your loop is tuned. (On the FT-450D, max S Meter may be 120–150, but higher is better.)
8. **Optionally,** use your radio's built-in tuner for final matching.
9. **Stop the script** at any time with `Ctrl+C` in the terminal.

**Tip:** If you’re not in the same room, you can use a phone or video call to relay audio between locations.

---

## Using `maglooptunerset.sh` to Set Frequency and Read S Meter

To set the frequency and then start S Meter readings:
```sh
./maglooptunerset.sh 7078000
```
- Frequency must be specified in **Hz** (e.g., `7078000` for 7.078 MHz).
- You can create multiple copies of the script with preset frequencies for convenience.

---

## Troubleshooting

- **S Meter reading doesn’t change:** Adjust your radio's RF GAIN knob; sometimes the S Meter will get “stuck” if the gain is too high/low.
- **Errors or gibberish spoken:** Ensure no other applications are using the serial port. Double-check hamlib connection parameters.
- **Script won't run:** Make sure it’s executable (`chmod +x maglooptuner.sh`) and dependencies are installed.

---

## License

[CC0](https://creativecommons.org/public-domain/cc0/) – Public Domain

---

## Author

Jeff Luszcz  
[https://github.com/jeff-luszcz/MagLoopTuner](https://github.com/jeff-luszcz/MagLoopTuner)

---
