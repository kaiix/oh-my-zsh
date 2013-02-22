autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
setopt prompt_subst

PROMPT='%{$fg[red]%}%m %{$reset_color%}%n %{$reset_color%}%{$fg[green]%}%~%{$reset_color%} $(git_prompt_info)
%{$fg[green]%}$ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"

