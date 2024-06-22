# Vim

## Install Vim

```bash
bash -c "$(curl --location https://docs.impossible98.win/vim/install.sh)"
```

## Configure

```bash
cat << EOF > ~/.vimrc
set backspace=indent,eol,start
set cursorline
set encoding=utf-8
set fileencoding=utf-8
set number

EOF
```

## Uninstall Vim

```bash
bash -c "$(curl --location https://docs.impossible98.win/vim/uninstall.sh)"
```
