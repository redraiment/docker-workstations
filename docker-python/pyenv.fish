set -g -x PYENV_ROOT $HOME/.pyenv
set -g -x PYTHON_BUILD_CACHE_PATH $PYENV_ROOT/cache
set -g -a PATH $PYENV_ROOT/bin

if type -q pyenv then
    # 去掉status is-login判断，用于Emacs内置的Shell命令
    # status is-login; and pyenv init --path | source
    pyenv init --path | source
    pyenv init - | source
    pyenv virtualenv-init - | source
end
