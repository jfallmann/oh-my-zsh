# Git-centric variation of the "fishy" theme.

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[magenta]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_UNSTAGED="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}"


ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=" "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"

local user_color='green'
test $UID -eq 0 && user_color='red'

PROMPT='%(?..%{$fg_bold[red]%}exit %?
%{$reset_color%})'\
'%{$bold_color%}$(git_prompt_status)%{$reset_color%}'\
'$(git_prompt_info)'\
'%{$fg[$user_color]%}%~%{$reset_color%}'\
'%(!.#.>) '

PROMPT2='%{$fg[red]%}\ %{$reset_color%}'