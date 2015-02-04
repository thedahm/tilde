for file in "$(dirname "$BASH_SOURCE")"/.bash/{shell,commands,prompt,extra}; do
	[ -r "$file" ] && source "$file";
done;
GIT_PROMPT_SHOW_LAST_COMMAND_INDICATOR=1 
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

unset file;
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/buzzfeed/bin:$PATH"
export PATH="/buzzfeed/local/bin:$PATH"
