#!/bin/bash

# You can use 'https://scriptim.github.io/bash-prompt-generator/' to customize : colors, informations, order, line, emojis, etc.. 
# ───────────────────────────────────────────────────────────────────────────────────
# For bash prompts that display battery % you either want to take the battery() func at the end or replace the func inside the prompt by your own
# ───────────────────────────────────────────────────────────────────────────────────
# To install a prompt you'll need to change PS1's value in your .bashrc, you can also copy PS1's value in your term, but the change will not be permanent

# ⚠️ You should comment your PS1 vars instead of deleting them just in case
# ⚠️ Preview are colorless, you should either use paste PS1's value in you terminal or use 'https://scriptim.github.io/bash-prompt-generator/'

### Bash Prompts ###
# Color : blue / purple
## Preview : username@hostname.com - [📂 ~/bin]
##           └─[📅 Fri Feb 31 | 12:24:48] {🔋 96%} > $ 
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]- \[\e[0;38;5;62m\][\[\e[0m\]📂 \[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0m\]📅 \[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0m\]🔋 $(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]\[\e[0m\]'

# Color : blue / white
## Preview : [🙋🏾96%] username@hostname.com: 📂 ~/bin  $ 
PS1='\[\e[0;38;5;33m\][\[\e[0m\]🙋🏾\[\e[0m\]$(battery) \[\e[0;38;5;33m\]] \[\e[0;3m\]\u\[\e[0;38;5;33m\]@\[\e[0;1m\]\H\[\e[0;38;5;33m\]: \[\e[0m\]📂 \[\e[0m\]\w  \[\e[0;38;5;33m\]$ \[\e[0m\]'

# Color : blue / purple
## Preview : username@hostname.com - [~/bin]
##           └─[Fri Feb 31 | 12:24:48] {96%} > $ 
PS1='\[\e[0;1;38;5;68m\]\u\[\e[0;38;5;62m\]@\[\e[0;3;38;5;68m\]\H \[\e[0;38;5;62m\]- \[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\w\[\e[0;38;5;62m\]]\n\[\e[0;38;5;62m\]└─\[\e[0;38;5;62m\][\[\e[0;38;5;68m\]\d \[\e[0;38;5;62m\]| \[\e[0;5;38;5;68m\]\t\[\e[0;38;5;62m\]] \[\e[0;38;5;62m\]{\[\e[0m\]$(battery)\[\e[0;38;5;62m\]} \[\e[0;38;5;62m\]> \[\e[0;38;5;62m\]$ \[\e[0m\]'

# Color : white
## Preview : username@hostname.com - [~/bin]
##           └─[Fri Feb 31 | 12:24:48] {96%} > $ 
PS1='\[\e[0;1m\]\u\[\e[0m\]@\[\e[0;3m\]\H \[\e[0m\]- \[\e[0m\][\[\e[0m\]\w\[\e[0m\]]\n\[\e[0m\]└─\[\e[0m\][\[\e[0m\]\d \[\e[0m\]| \[\e[0;5m\]\t\[\e[0m\]] \[\e[0m\]{\[\e[0m\]$(battery)\[\e[0m\]} \[\e[0m\]> \[\e[0m\]$ \[\e[0m\]'

# Color : white
## Preview : [96%] username@hostname.com: ~/bin $
PS1='\[\e[0m\][ \[\e[0m\]$(battery) \[\e[0m\]] \[\e[0m\]\u\[\e[0m\]@\[\e[0m\]\H\[\e[0m\]: \[\e[0m\]\w  \[\e[0m\]$ \[\e[0m\]'

# Battery Function I use, you might want to add it to your ~/.bashrc
battery(){
    ## Battery Vars
    battery="/sys/class/power_supply/*" 
    # You might wanna add the real folder instead of '*'

    battery_charge=$(cat ${battery}/capacity)

    # Prevent a charge of more than 100% displaying
    if [ "${battery_charge}" -gt "99" ]; then battery_charge="100"; fi

    # echo Battery %
    echo -e "${battery_charge}%"
}
