set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
#set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_dirtystate "✲"

set -g __fish_git_prompt_char_untrackedfiles "…"
#set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_conflictedstate "¯\_(ツ)_/¯"
set -g __fish_git_prompt_char_cleanstate "✔"
set -g GTK_THEME Adwaita:light
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#eval (eval /home/hady/anaconda3/bin/conda "shell.fish" "hook" $argv)
# <<< conda initialize <<<
set -U dangerous_nogreeting

abbr gm "git add . && git commit -m"
abbr gp "git push"
abbr gs "git status"
abbr gd "git diff"
abbr v "$EDITOR"
abbr e "$EDITOR"
abbr p "sudo pacman"
abbr sys "sudo systemctl"
abbr nu  "nvim /dev/null"
