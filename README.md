# Nihilc's dotfiles shell

There are my dotfiles for shell programs

## List of programs

- [nvim](#nvim)
- [tmux](#tmux)
- [zsh](#zsh)
- git
- htop

## Nvim

Details [here](./nvim/README.md)

## Tmux

Prefix: `<C-z>`

It's just a simple config to work fine with nvim and other tools, the most important changes are in the [bindings](./tmux/README.md), and I use my own [theme](https://github.com/nihilc/tmux-theme):

![tmux_nvim](./images/tmux_nvim.png)

#### Usage

Copy or link the **tmux** folder

```bash
cp -r tmux ~/.config/tmux
# or
ln -s "$(realpath tmux)" ~/.config/tmux
```

Then install [tpm](https://github.com/tpm/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm.git ~/.config/tmux/plugins/tpm
```

Finally open tmux and install the plugins with `prefix` + `I` (capital i)

## Zsh

Features:

- autocompletion
- vim movement
- basic aliases
- plugins
  - [autossugestion](https://github.com/zsh-users/zsh-autosuggestions)
  - [completions](https://github.com/zsh-users/zsh-completions)
  - [syntax highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- prompt [starship](https://starship.rs/)

### Usage

Copy or link the **zsh** folder

```bash
cp zsh ~/.config/zsh
#or
ln -s "$(realpath zsh)" ~/.config/zsh
```

Set the `ZDOTDIR` env in the startup `/etc/zsh/zshenv`

```zsh
ZDOTDIR=$HOME/.config/zsh
```

Clone the plugins

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZDOTDIR/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $ZDOTDIR/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZDOTDIR/plugins/zsh-syntax-highlighting
```

Now close and open a new terminal.
