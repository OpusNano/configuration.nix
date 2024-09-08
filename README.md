# NixOS Configuration

Welcome to the NixOS Configuration repository! This repository contains my personal configuration file for setting up and managing my NixOS system.

## Features

- **UEFI**: Offers support for UEFI only.
- **NVIDIA**: Includes the open-source Nvidia Drivers.
- **Hyprland**: This config file is mainly focused around Hyprland with some of my personal programs. 

## Installation

Follow these steps to install the configuration from the CLI version of NixOS. This guide assumes you do not have `git` installed yet.

### Prerequisites

1. **Minimal NixOS Installer**: Ensure you have the minimal NixOS installer booted up. You can download it from the NixOS download page.
2. **Internet Connection**: Make sure you have an active internet connection.

### Steps

1. **Temporarily install GIT**:
   ```bash
   nix-shell -p git
   ```

2. **Delete the old configuration file**:
   ```bash
   sudo rm /etc/nixos/configuration.nix
   ```

3. **Clone your GitHub repository**:
   ```bash
   git clone https://github.com/OpusNano/configuration.nix.git
   ```

4. **Navigate to the repository directory**:
   ```bash
   cd configuration.nix
   ```

5. **Copy the new configuration file** to the appropriate directory**:
   ```bash
   sudo cp configuration.nix /etc/nixos/configuration.nix
   ```

6. **Rebuild the system** to apply the changes:
   ```bash
   sudo nixos-rebuild switch
   ```

This will replace the old configuration with your new one from GitHub. If you run into any issues or need further assistance, just let me know!
