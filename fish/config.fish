# add the path of go and those installed by go
#export PATH=$PATH:~/go/bin
set PATH $HOME/go/bin $PATH

# proxy
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=http://127.0.0.1:7890
alias proxy_on='export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890 && echo -e http and https proxy on'
alias proxy_off='unset https_proxy http_proxy && echo -e http and https proxy off'
alias git_proxy_on='git config --global http.proxy 127.0.0.1:7890 && git config --global https.proxy 127.0.0.1:7890 && echo -e git proxy on'
alias git_proxy_off='git config --global --unset http.proxy && git config --global --unset https.proxy && echo -e git proxy off'

if status is-interactive
    # Commands to run in interactive sessions can go here
    # alias
    alias c='clear'
    alias e='exit'
    alias lg='lazygit'
    alias t='tmux'
    alias hx='helix'
    # some more ls aliases
    alias ll='ls -l'
    alias la='ls -A'
    alias l='ls -CF'

    function yy
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
    end

    fish_config prompt choose astronaut
end
