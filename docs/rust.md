# Rust

## Install Rust

```bash
bash -c "$(curl --location https://docs.impossible98.win/rust/install.sh)"
```

## Configure

```bash
cat << EOF > ~/.cargo/config.toml
[source.crates-io]
replace-with = 'tuna'

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"

EOF
```

## Uninstall Rust

```bash
bash -c "$(curl --location https://docs.impossible98.win/rust/uninstall.sh)"
```
