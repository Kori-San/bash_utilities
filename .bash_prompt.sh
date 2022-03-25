#!/bin/bash

# ───────────────────────────────────────────────────────────────────────────────────
#   You can use 'https://scriptim.github.io/bash-prompt-generator/' to customize :
#             Colors / Informations / Order / Line / Add Emojis / Ect... 
# ───────────────────────────────────────────────────────────────────────────────────
# For bash prompts that display battery % you either want to take the battery() func 
#            at the end or replace the func inside the prompt by your own           
# ───────────────────────────────────────────────────────────────────────────────────
#     To install a prompt you'll need to change the PS1 value in your ~/.bashrc
# or you can just copy '$ PS1=...' in your term, but the change will not be permanent
#   /!\ You should comment your PS1 vars instead of deleting them just in case /!\
# ───────────────────────────────────────────────────────────────────────────────────

### Bash Prompts ###
# Color : blue / purple
# Informations : username, hotsname, workdir, date, time, battery %
# Lines : 2
# Emojis : Yes
## Preview : kori@san - [📂 ~/bin]
##           └─[📅 Fri Mar 25 | 12:24:48] {🔋 96%} > $ 
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]- \[\e[0;38;5;62m\][\[\e[0m\]📂 \[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0m\]📅 \[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0m\]🔋 $(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]\[\e[0m\]'

# Color : blue / purple
# Informations : username, hotsname, workdir, date, time, battery %
# Emojis : No
# Lines : 2
## Preview : kori@san - [~/bin]
##           └─[Fri Mar 25 | 12:24:48] {96%} > $ 
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]- \[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0m\]$(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]'

# Color : white
# Informations : username, hotsname, workdir, date, time, battery %
# Emojis : No
# Lines : 2
## Preview : kori@san - [~/bin]
##           └─[Fri Mar 25 | 12:24:48] {96%} > $
PS1='\[\e[0;1m\]\u\[\e[0m\]@\[\e[0;3m\]\H \[\e[0m\]- \[\e[0m\][\[\e[0m\]\w\[\e[0m\]]\n\[\e[0m\]└─\[\e[0m\][\[\e[0m\]\d \[\e[0m\]| \[\e[0;5m\]\t\[\e[0m\]] \[\e[0m\]{\[\e[0m\]$(battery)\[\e[0m\]} \[\e[0m\]> \[\e[0m\]$ \[\e[0m\]'

# Battery Function I use, you might want to add it to your ~/.bashrc
battery(){
    ## Battery Vars
    battery="/sys/class/power_supply/*" 
    # The '*' character make's the script look towards every folder in the path
    # and take the one that have 'capacity' file. Therefore if you have than one
    # Battery you might wanna add the real folder instead of '*'

    battery_charge=$(cat ${battery}/capacity)

    # Prevent a charge of more than 100% displaying
    if [ "${battery_charge}" -gt "99" ]; then battery_charge="100"; fi

    # Colour Attribution - Delete the whole if you don't want colours
    if [ "${battery_charge}" -gt "50" ]; then
        colour="\033[01;32m" # Green
    elif [ "${battery_charge}" -gt "25" ]; then
        colour="\033[01;33m" # Yellow
    else
        colour="\033[01;31m" # Red
    fi

    # echo Battery % with colour set above
    # Remove ${colour} if you dont want them
    echo -e "${colour}${battery_charge}%"
}
