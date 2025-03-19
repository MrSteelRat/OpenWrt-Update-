#!/bin/bash

# Defining Header
HEADER="""
openwrt_update.sh Copyright (C) 2025 Mr. Steel Rat

Easily update, upgrade up your OpenWrt system with this bash script.
"""

# Print Header
echo "$HEADER"

# Updating the package list
opkg update

# Getting a list of packages to be updated and updating them
opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade
