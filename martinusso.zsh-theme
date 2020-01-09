local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'

git_status() {
  echo $(git_prompt_status)
}

PROMPT="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[blue]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT='${return_code} $(git_status)'

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[white]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ●%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%} ⭍%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[magenta]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[magenta]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[magenta]%} ↕%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%} ↕%{$reset_color%}"

unset return_code
