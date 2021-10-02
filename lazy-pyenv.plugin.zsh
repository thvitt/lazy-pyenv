if (( $+commands[pyenv] )); then
    function pyenv() {
        if [[ \! -d "$HOME/.pyenv" ]]; then
            echo "Installing pyenv ..."
            ( cd ~ \
                &&  git clone https://github.com/pyenv/pyenv.git ~/.pyenv  \
                && cd ~/.pyenv \
                && ./src/configure && make -C src
            )
        fi
        unset -f pyenv
        eval $(~/.pyenv/bin/pyenv init -)
        pyenv "$@"
    }
fi
