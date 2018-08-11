
PROMPT='
$fg_bold[magenta][$fg[red] %W%t $fg_bold[magenta]] $fg_bold[magenta]-> [ $fg[red]%n@%m:%~$(git_prompt_info)$fg_bold[magenta] ]$reset_color
$ '
# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[yellow] ( "
ZSH_THEME_GIT_PROMPT_SUFFIX="$fg_bold[yellow] )"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green] ✔"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red] ✗"
