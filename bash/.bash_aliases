alias clean-docker='docker system prune -a'
alias lsd='ls -la --group-directories-first'
alias k=kubectl
complete -F __start_kubectl k
alias show-path='sed "s/:/\n/g" <<< "$PATH"'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
