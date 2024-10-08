# Options
source "$ZDOTDIR/config/options.zsh"
# Keymaps
source "$ZDOTDIR/config/keymaps.zsh"
# Aliases
source "$ZDOTDIR/config/aliases.zsh"
# Autocmd
source "$ZDOTDIR/config/autocmd.zsh"
# Plugins
source "$ZDOTDIR/config/plugins.zsh"
# Theme
eval "$(starship init zsh)"
eval "$(direnv hook zsh)"
