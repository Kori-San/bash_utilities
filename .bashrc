#################################################################################################
# / / / /                                  WARNING /!\                                  \ \ \ \ #
# It's not my entire .bashrc only some aliases / func / and 'At launch' functionnalities I made #
# \ \ \ \                                  WARNING /!\                                  / / / / #
#################################################################################################

# At Launch
clear ; neofetch --ascii_distro Trisquel --ascii_colors 25 25 --color_blocks off --colors 4 31 7 4 7 6

# Aliases
## Aliases for Windows WSL
alias findex="explorer.exe ." # Find Current Dir with Windows Explorer

## Quality Of Life
alias n="source ~/.bashrc" # Renew the window by running 'At Launch' section
alias lt="echo -e 'Size    Filename\n-----------------'; du -sh ./* | sort -hr" # Show Size of Files and Folders in Dir
 
## Config - Configure files and source them
alias cb="vi ~/.bashrc && source ~/.bashrc"
alias cv="vi ~/.vimrc && source ~/.vimrc"
alias cpr="vi ~/.profile && source ~/.profile"

# Funcs
## A simple Battery function
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

# Vars
## Colors

## - Normal Colors
Black='\e[0;30m'
Red='\e[0;31m'
Green='\e[0;32m'
Yellow='\e[0;33m'
Blue='\e[0;34m'
Purple='\e[0;35m'
Cyan='\e[0;36m'
White='\e[0;37m'

## - Bold
BBlack='\e[1;30m'
BRed='\e[1;31m'
BGreen='\e[1;32m'
BYellow='\e[1;33m'
BBlue='\e[1;34m'
BPurple='\e[1;35m'
BCyan='\e[1;36m'
BWhite='\e[1;37m'

## - Background
On_Black='\e[40m'
On_Red='\e[41m'
On_Green='\e[42m'
On_Yellow='\e[43m'
On_Blue='\e[44m'
On_Purple='\e[45m'
On_Cyan='\e[46m'
On_White='\e[47m'

## - Color Reset
NC="\e[m"

## - Presets
ALERT=${BWhite}${On_Red} # Bold White on red background

#################################################################################################
# / / / /                                 /!\ WARNING /!\                               \ \ \ \ #
################################ /!\ UNMODIFIED BASHRC BELOW /!\ ################################
# \ \ \ \                                 /!\ WARNING /!\                               / / / / #
#################################################################################################
