for file in "$(dirname "$BASH_SOURCE")"/.bash/{shell,commands,prompt,extra}; do
	[ -r "$file" ] && source "$file";
done;
GIT_PROMPT_SHOW_LAST_COMMAND_INDICATOR=1 
GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

unset file;

# added by Anaconda3 5.2.0 installer
#export PATH="/anaconda3/bin:$PATH"

#export PATH="$HOME/.cargo/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dominichanzely/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/dominichanzely/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dominichanzely/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/dominichanzely/Downloads/google-cloud-sdk/completion.bash.inc'; fi
