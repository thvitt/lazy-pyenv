if (( ! $+commands[pyenv] )); then
    function pyenv() {
        if [[ ! -d "$HOME/.pyenv" ]]; then
            echo "Installing pyenv ..."
            ( cd ~ \
                &&  git clone https://github.com/pyenv/pyenv.git ~/.pyenv  \
                && cd ~/.pyenv \
                && ./src/configure && make -C src
            )
        fi
        unset -f pyenv

        export PYENV_ROOT="$HOME/.pyenv"
        export PATH="$PYENV_ROOT/bin:$PATH"
        eval "$(pyenv init --path)"
        eval "$(pyenv init -)"
        pyenv "$@"
    }
fi
