ZSH_THEME=""
autoload -U promptinit
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git cvs svn
zstyle ':vcs_info:*' formats '[(%s) %b%u%c]'
zstyle ':vcs_info:*' actionformats '[(%s) %b%u%c]'
zstyle ':vcs_info:*' unstagedstr '  '
zstyle ':vcs_info:*' stagedstr '  '
zstyle ':vcs_info:*' check-for-changes true
promptinit
prompt adam2

precmd() {
	vcs_info ‘prompt’
	if [ "$TERM" != "linux" ]
	then
		print -Pn "\e]0;%n@%m: %~\a"
	fi
}

prompt_line_1a='%b%F{cyan}┌─%B%F{black}[%B%F{green}%~%B%F{black}]%b%F{gray}$(virtualenv_prompt_info)%b%F{blue}${vcs_info_msg_0_}%B%F{black}%b%F{cyan}'
prompt_line_1b='%B%F{black}[%T][%b%F{cyan}%n%B%F{cyan}@%b%F{cyan}%m%B%F{black}]%b%F{cyan}'
prompt_line_2='%b%F{cyan}└──%B%F{white}'
prompt_char='%(!.#.)'

