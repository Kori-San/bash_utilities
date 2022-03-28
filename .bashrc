#################################################################################################
#                                          WARNING /!\                                          #
# It's not my entire .bashrc only some aliases / func / and 'At launch' functionnalities I made #
#                                          WARNING /!\                                          #
#################################################################################################

# At Launch
clear ; neofetch --ascii_distro Trisquel --ascii_colors 25 25 --color_blocks off --colors 4 31 7 4 7 6

# Aliases
## Aliases for Windows WSL
alias findex="explorer.exe ." # Find Current Dir with Windows Explorer

## Quality Of Life
alias n="source ~/.bashrc" # Renew the window by running 'At Launch' section
alias lt="echo -e 'Size    Filename\n-----------------'; du -sh */* | sort -hr" # Show Size of Files in Dir and Subdirs
 
## Config - Configure files and source them
alias cb="vi ~/.bashrc && source ~/.bashrc"
alias cv="vi ~/.vimrc && source ~/.vimrc"
alias cpr="vi ~/.profile && source ~/.profile"

# Funcs

#################################################################################################
# / / / /                                  WARNING /!\                                  \ \ \ \ #
################################ UNMODIFIED BASHRC BELOW /!\ ####################################
# \ \ \ \                                  WARNING /!\                                  / / / / #
#################################################################################################
