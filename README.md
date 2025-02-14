# AMDGPU Settings
***Deprecated!!! New version available [here](https://github.com/yuheho7749/amdgpu-settings-rust)***

Scripts to set custom amdgpu settings on Linux. Note that this is only tested on RDNA3 gpu (RX 7700 XT) on Arch Linux (kernel 6.12 or later).

## Prerequisites
- Kernel parameters must be set according to [this](https://wiki.archlinux.org/title/AMDGPU#Boot_parameter)

## Usage
- Run the `install.sh` script to install files
- Edit the gpu config file at `/etc/default/amdgpu-settings.config`. Note that not all settings are supported at this moment.
- Run `amdgpu-settings` (with elevated privileges) to set settings

### Usage flags
- `-l` or `--list` to read current gpu settings
- `-c` or `--card` to write settings to a different card (default is card1)
- `-r` or `--reset` to reset to default settings (determined by your gpu's bios)

## Automated during boot using systemd
- Run `systemctl enable amdgpu-settings.service`
