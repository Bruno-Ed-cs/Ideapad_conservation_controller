# Ideapad_conservation_controller
A simple bash script to control Lenovo's ideapads battery conservation mode

This script allows you to control the battery conservation mode of your Lenovo Ideapad laptop. The conservation mode helps extend the lifespan of your battery by limiting its charge capacity to around 60-80% depending on the manufacturer.

## How it works

The script interacts with the `ideapad_acpi` driver responsible for managing the conservation mode. It reads the current status of the mode and provides options to turn it on, off, or check its status.

## Usage

1. **Check Conservation Mode Status**:

$ conservation.sh

2. **Turn Conservation Mode Off**:

$ conservation.sh -off

3. **Turn Conservation Mode On**:

$ conservation.sh -on

4. **Help**:

$ conservation.sh -help

## Installation

1. **Download the Script**: Download the `conservation.sh` script to your preferred directory.

2. **Make it Executable**: Run the following command in the terminal:

$ chmod +x conservation.sh

3. **Add to .bashrc (Optional)**: To access the script from anywhere in the terminal, add the following line to your `.bashrc` or `.bash_profile`:
export PATH="$PATH:/path/to/directory"
Replace `/path/to/directory` with the path where you saved the `conservation.sh` script.

## Note

- **Driver Variable**: If the script doesn't work, you can modify the `conservation_driver` variable to point to the correct path of the `ideapad_acpi` driver on your system.

- **Root Privileges**: The script uses `sudo` to write to the driver file, so you may need to enter your password when executing the script with options `-off` or `-on`.

- **Help**: If you need assistance, use the `-help` option to display the available commands.
