if status is-interactive
    # Commands to run in interactive sessions can go here
end


bonsai -m "Hello" > /tmp/bfetch_bonsai.txt



set -g fish_greeting "Hallo Broski"
set -gx SHELL /usr/bin/fish

# bfetch variables
set -gx BFETCH_INFO "/home/denis/bfetch/info"
#set -gx BFETCH_TEMPORARY = "/tmp/bfetch"
set -gx BFETCH_ART ~/textart-collections/other/chess.textart
     #bonsai -m "Stay hard"
set -gx BFETCH_COLOR colorstrip

# aliases
alias wezcfg="micro ~/.wezterm.lua"
alias ls=lsd
alias du=ncdu

#fastfetch --kitty ~/Pictures/big\ bob\ nuts.jpeg

#/home/denis/.local/bin/bfetch
