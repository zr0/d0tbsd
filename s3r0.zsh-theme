ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}{"
ZSH_THEME_GIT_PROMPT_SUFFIX="}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} *%{$fg[blue]%}"

PROMPT='%{$(git_prompt_info)%} %{$fg[green]%}%D{{%I:%M}} %{$reset_color%}%{$fg[cyan]%}{%~}%{$reset_color%}
%{$fg[blue]%}<%{$reset_color%}%{$fg[red]%}*%{$reset_color%}%{$fg[blue]%}>%{$reset_color%} '
