# ICENIX Setup Guide

This guide provides essential commands for setting up and using ICENIX efficiently.

## Repository Overview

The **ICENIX** repository is a NixOS-based project designed for system configuration and automation. It includes:
- NixOS configuration files
- Scripts for system setup
- Custom modules and utilities

## Useful Commands

| Task                          | Command Example |
|-------------------------------|----------------|
| **Connect to WiFi**           | `nmcli device wifi connect <SSID> password <PASSWORD>` |
| Example from our chat:        | `nmcli device wifi connect MyNetwork password MySecretPass` |
| **Take a Screenshot**         | `nix-shell -p flameshot --run "flameshot gui"` |

### Notes:
- Ensure you have `nmcli` installed to manage network connections.
- `flameshot` is used for taking screenshots interactively.
- `nix-shell` allows you to run `flameshot` temporarily without installing it system-wide.

## How to Use This Repository

1. **Clone the Repository**
   ```sh
   git clone https://github.com/keroloswilliam/icenix.git
   ```

---

## Contributing
- Fork the repository.
- Create a new branch for your changes.
- Submit a pull request with a clear description.

---

This document will be updated with more essential commands as needed.
