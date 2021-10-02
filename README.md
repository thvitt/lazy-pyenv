## Lazy pyenv plugin for zsh

This is a very minimalistic "lazy" pyenv plugin for zsh that allows to completely ignore pyenv and all its shims until you first use it in a session.

When you first call `pyenv` in a session, this will activate pyenv. If pyenv isn’t installed, it will be. The path manipulations that the pyenv installation usually requires in `~/.profile` are executed when you first call `pyenv`, i.e. without that you use the regular python and not the pyenv shims.
