# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
source "$ZDOTDIR/themes/powerlevel10k/powerlevel10k.zsh-theme"

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
