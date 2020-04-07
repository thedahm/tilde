#!/bin/bash
for file in "$(dirname "${BASH_SOURCE[@]}")"/.bash/{shell,commands,prompt,extra}; do
	[ -r "$file" ] && source "$file";
done;

export GIT_EDITOR=$EDITOR
export GIT_PROMPT_SHOW_LAST_COMMAND_INDICATOR=1 
export GIT_PROMPT_ONLY_IN_REPO=1

source "$HOME"/.bash-git-prompt/gitprompt.sh

unset file;
