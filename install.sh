#!/bin/bash

# code by BLACK ZERO
green="\e[92m"
reset="\e[0m"

THEME_DIR="theme"
bar_animation() {
    local pkg_name=$1
    for i in $(seq 1 20); do
        printf "\r%-15s [%-20s] %d%%" "$pkg_name" $(printf '#%.0s' $(seq 1 $i)) $((i*5))
        sleep 0.1
    done
    echo
}

echo -e "${green}Installing required packages...${reset}"
while read pkg; do
    echo -e "${green}Installing $pkg...${reset}"
    pkg install -y "$pkg" > /dev/null 2>&1
    bar_animation "$pkg"
done < "$THEME_DIR/packages.txt"

echo -e "${green}\nAll packages installed successfully!${reset}"
echo -e "${green}Note: To apply theme, run: python theme.py${reset}"
