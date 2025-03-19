#!/bin/bash

# Updating the package list
opkg update

# Getting a list of packages to be updated and updating them
opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade
