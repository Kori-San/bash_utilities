#!/bin/bash

# Feel free to check how they look like by copying the line on 'https://scriptim.github.io/bash-prompt-generator/'
## For bash prompts that display battery % you either want to take the battery() func at the end or replace the func inside prompts by your own

# Bash Prompt with username, hotsname, workdir, date, time, blue / purple colors, Emojis and battery %
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]-\[\e[0;38;5;62m\][\[\e[0m\]📂 \[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0m\]📅 \[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0m\]🔋 \[\e[0;1;2m\]$(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]'

# Bash Prompt with username, hotsname, workdir, date, time, blue / purple colors and battery %
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]-\[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0;1;2m\]$(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]'

# Bash Prompt with username, hotsname, workdir, date, time, white (no colors) and battery %
PS1='\[\e[0;1m\]\u\[\e[0m\]@\[\e[0;3m\]\H \[\e[0m\]- \[\e[0m\]\w\n\[\e[0m\]└─\[\e[0m\][\[\e[0m\]\d \[\e[0m\]| \[\e[0;5m\]\t\[\e[0m\]] \[\e[0m\]{\[\e[0m\]$(battery)\[\e[0m\]} \[\e[0m\]> \[\e[0m\]$ \[\e    [0m\]'

# Battery Function I use, you might wanna add it to your ~/.bashrc
## /!\ Warning: don't forget to look for your battery 
battery(){
    # Battery Vars
    battery="/sys/class/power_supply/BAT1" 
    # Battery's path is not the same for everyone you might wanna change it
    battery_charge=$(cat ${battery}/capacity)

    # Prevent a charge of more than 100% displaying
    if [ "${battery_charge}" -gt "99" ]; then battery_charge="100"; fi

    # Colour Attribution
    if [ "$color_prompt" = yes ]; then # If colors can be prompted then
        if [ "${battery_charge}" -gt "50" ]; then
            colour="\033[01;32m" # Green
        elif [ "${battery_charge}" -gt "25" ]; then
            colour="\033[01;33m" # Yellow
        else
            colour="\033[01;31m" # Red
        fi
    fi

    echo -e "${colour}${battery_charge}%"
}
