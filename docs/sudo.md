# sudo

## Install sudo

```bash
bash -c "$(curl --location https://docs.impossible98.win/sudo/install.sh)"
```

## Add user to sudoers

```bash
useradd --create-home --shell /bin/bash --group sudo --home-dir /home/<username> <username>
passwd <username>
```
