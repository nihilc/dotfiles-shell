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

It's just a simple config to work fine with nvim and other tools, the most important changes are in the [binding](./tmux/README.md)s, and I use my own [theme](https://github.com/nihilc/tmux-theme):

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
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
```

Finally open tmux and install the plugins with `prefix` + `I` (capital i)

## Zsh

Simple, minimal, scalable and functional.

- autocompletion
- vim movement
- basic aliases
- plugins
  - [autossugestion](https://github.com/zsh-users/zsh-autosuggestions)
  - [completions](https://github.com/zsh-users/zsh-completions)
  - [syntax highlight](https://github.com/zsh-users/zsh-syntax-highlighting)
- theme [powerlevel0k](https://github.com/romkatv/powerlevel10k)

> [!NOTE]
> You can comment the source of _autocmd_ in `$ZDOTDIR/.zshrc` if you don't want to auto/re start the ssh-agent in every new shell outside tmux

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

Clone the plugins and the powerlevel10k theme

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZDOTDIR/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $ZDOTDIR/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZDOTDIR/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZDOTDIR/themes/powerlevel10k
```

Now close and open a new terminal.
