
To install just run the install script:

```
$ ./install.sh
```

To get all features working properly make sure you change your terminal font to ``hack`` (installed locally by the install.sh).

On iterm2 (OS X) I use ``Hack Nerd Font 14pt`` as font (anti-aliased).

Also make sure you are using ``xterm-256color`` as your ``TERM``. You can do that by adding the following line to your ``~/.zshrc`` or ``~/.bashrc``:

```
export TERM=xterm-256color
```

Hack fonts are downloaded from https://github.com/source-foundry/Hack and
the "Nerd Font" version from https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Hack/Regular/complete.

This font setup also supports powerlevel10k (zsh theme).
