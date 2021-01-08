alias clean-docker='docker system prune -a'
alias lsd='ls -la --group-directories-first'
alias k=kubectl
complete -F __start_kubectl k
alias show-path='sed "s/:/\n/g" <<< "$PATH"'
